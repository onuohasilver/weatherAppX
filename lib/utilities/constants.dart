import 'package:flutter/material.dart';

const kcardStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);

const kTextCardStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 50,
);

const kInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintStyle: TextStyle(color: Colors.grey),
  hintText: 'Enter City Name',
  icon: Icon(Icons.location_city, color: Colors.white),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(14.0),
    ),
  ),
);
