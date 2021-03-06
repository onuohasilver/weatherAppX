import 'package:flutter/material.dart';
import 'package:clima/utilities/components.dart';
import 'package:clima/services/weather_services.dart';
import 'package:clima/screens/city_screen.dart';

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
      var _temp = weatherData['main']['temp'];
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
      child: Scaffold(
              body: Center(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Icon(Icons.location_on, size: 30),
                        onPressed: () async {
                          var weatherData =
                              await WeatherModel().getLocationWeather();
                          print(weatherData);
                          updateUI(weatherData);
                          
                        },
                      ),
                      FlatButton(
                        child: Icon(Icons.location_city, size: 30),
                        onPressed: () async {
                          var typedName = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CityScreen();
                              },
                            ),
                          );
                          if (typedName != null) {
                            var weatherData=await WeatherModel().getCityWeather(typedName);
                            updateUI(weatherData);
                          }
                        },
                      ),
                    ],
                  ),
                  Text(
                    '$weatherMessage in $cityName',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    temp.toString(),
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(color: Colors.black, blurRadius: 22.0)
                        ],
                        color: Colors.lime,
                        fontWeight: FontWeight.bold,
                        fontSize: 100,
                        fontFamily: 'Spartan MB'),
                  ),
                  Text(
                    weatherIcon,
                    style: TextStyle(fontSize: 160),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
