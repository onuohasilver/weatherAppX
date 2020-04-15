import 'package:flutter/material.dart';
import 'package:clima/services/location_services.dart';
import 'package:clima/services/networking_services.dart';
import 'package:clima/screens/location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  // void initState() {
  //   super.initState();
  //   getLocationData();
  // }

  // void getLocationData() async {
  //   Location locationData = Location();
  //   await locationData.getCurrentPosition();
  //   latitude = locationData.latitude;
  //   longitude = locationData.longitude;
  //   NetworkHelper networkHelper=NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=058649f778e2077ac67a56d817945961');

  //   var weatherData=await networkHelper.getData();
  
  // }

  
  

  @override
  Widget build(BuildContext context) {
    // getLocation();
    return LocationScreen();
  }
}
