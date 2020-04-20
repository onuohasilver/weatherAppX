import 'package:flutter/material.dart';
import 'package:clima/utilities/components.dart';
import 'package:clima/services/weather_services.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});
  final locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String weatherIcon;
  String cityName;
  int temp;
  String weatherMessage;
  WeatherModel weathermodel = WeatherModel();

  void updateUI(dynamic weatherData) {
    int condition = weatherData['weather'][0]['id'];
    cityName = weatherData['name'];
    double _temp = weatherData['main']['temp'];
    temp = _temp.toInt();
    weatherIcon = weathermodel.getWeatherIcon(condition);
    weatherMessage = weathermodel.getMessage(temp);
  }

  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/location_background.jpg'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  weatherMessage,
                  style: TextStyle(fontSize: 50, color: Colors.white,fontWeight:FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    FloatingCard(label: temp.toString(), labelx: 'degees',color:Colors.lime),
                    
                  ],
                  
                ),
                Text(weatherIcon,style:TextStyle(fontSize:70))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
