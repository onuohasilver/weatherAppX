import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'images/city_background.jpg',
              ),
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Align(
                  child: FlatButton(
                    child: Icon(Icons.arrow_back_ios, size: 80),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  alignment: Alignment.topLeft,
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: kInputDecoration
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
