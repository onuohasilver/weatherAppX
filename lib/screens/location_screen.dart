// String description = decodedData['weather'][0]['description'];
// String cityName = decodedData['name'];
// double temp = decodedData['main']['temp'];
// print('$description, $cityName , $temp');

import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/location_background.jpg'),
          fit: BoxFit.cover
        ),
      ),
      child:Scaffold(
        body:Text('Yes')
      )

    );
  }
}
