import 'package:flutter/material.dart';
import 'constants.dart';

class FloatingCard extends StatelessWidget {
  FloatingCard({this.label, this.labelx});
  final String label;
  final String labelx;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:3,
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(label, style: kcardStyle, textAlign: TextAlign.center),
            SizedBox(height: 10),
            Text(labelx, style: kcardStyle, textAlign: TextAlign.center),
          ],
        ),
        decoration: BoxDecoration(
          // boxShadow: [BoxShadow(spreadRadius: 3.0)],
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  TextCard({this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex:2,
      child: Container(
        alignment:Alignment.center,
        child: Text(label, style: kTextCardStyle, textAlign: TextAlign.center),
      ),
    );
  }
}
