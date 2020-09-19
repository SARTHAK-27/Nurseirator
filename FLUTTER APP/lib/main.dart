import 'package:flutter/material.dart';
import 'package:nurseirator/Reg.dart';
import 'package:nurseirator/Registration.dart';
import 'package:nurseirator/login.dart';
import 'package:nurseirator/welcomeScreen.dart';
import 'package:nurseirator/patient.dart';
import 'package:nurseirator/Reg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nurseirator/login.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: '/reg',
      routes: {
        '/':(context)=>welcomeScreen(),
        '/register':(context)=>registerScreen(),
        '/reg':(context)=>registration(),
        '/login':(context)=>loginScreen(),
        '/patient':(context)=>patient(),
      },
    );
  }
}
