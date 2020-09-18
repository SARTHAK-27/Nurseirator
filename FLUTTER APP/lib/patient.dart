import 'package:flutter/material.dart';
import 'package:nurseirator/Boxes.dart';
class patient extends StatefulWidget {
  @override
  _patientState createState() => _patientState();
}

class _patientState extends State<patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        color: Colors.lightBlueAccent,
        child: ListView(
          children: [

          ],

        ),
      ),
    );
  }
}
