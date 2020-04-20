import 'package:flutter/material.dart';
import 'package:clima/services/location_services.dart';
import 'package:clima/services/networking_services.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather_services.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location locationData = Location();
    await locationData.getCurrentPosition();
    NetworkHelper networkHelper = NetworkHelper(
        url:
            'https://api.openweathermap.org/data/2.5/weather?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=058649f778e2077ac67a56d817945961');

    var weatherData = await networkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(locationWeather: weatherData,);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // getLocation();
    return Scaffold(
      body: Center(
        child: SpinKitWave(color: Colors.white, size: 60),
      ),
    );
  }
}
