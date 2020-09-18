import 'package:flutter/material.dart';
import 'package:nurseirator/Registration.dart';
import 'package:nurseirator/login.dart';
import 'package:nurseirator/welcomeScreen.dart';
import 'package:nurseirator/patient.dart';
import 'package:nurseirator/login.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>welcomeScreen(),
        '/register':(context)=>registerScreen(),
        '/login':(context)=>loginScreen(),
        '/patient':(context)=>patient(),
      },
    );
  }
}
