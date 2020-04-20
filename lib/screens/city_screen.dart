import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.transparent,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/city_background.jpg'),
        ),
      ),
      child: null,
    ));
  }
}
