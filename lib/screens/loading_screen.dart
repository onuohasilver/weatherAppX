import 'package:flutter/material.dart';
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
    WeatherModel weather =WeatherModel();
    var weatherData=await weather.getLocationWeather();
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
