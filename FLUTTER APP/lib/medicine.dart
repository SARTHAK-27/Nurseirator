import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
class medical extends StatefulWidget {
  @override

  _medicalState createState() => _medicalState();
}
final _auth = FirebaseAuth.instance;
final User user = _auth.currentUser;
final uid = user.uid;
final ref=FirebaseDatabase.instance.reference();
var mon,tue,wed,thu,fri,sat,sun;

class _medicalState extends State<medical> {
  /*void init()
  {
    super.initState();
    User user = _auth.currentUser;
    var uid = user.uid;
    print(uid);
    ref.child('Medi').child(uid).child('Monday').once().then((DataSnapshot dataSnapshot) {
      mon=dataSnapshot.value;
    });
  }*/
  @override

  Widget build(BuildContext context) {
    dataa();
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(border: Border.all(),
                color: Colors.grey),
                child: Column(
                  children: [
                    Text('Monday',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold),),
                    Text(mon,style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Tuesday',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  Text(tue,style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Wednesday',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  Text(wed,style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Thursday',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  Text(thu,style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Friday',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  Text(fri,style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Saturday',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  Text(sat,style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Sunday',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  Text(sun,style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),

        ],

      ),
    );
  }
  void dataa()
  {
    User user = _auth.currentUser;
    var uid = user.uid;
    print(uid);
    ref.child('Medi').child(uid).child('Monday').once().then((DataSnapshot dataSnapshot) {
      mon=dataSnapshot.value;

    });
    ref.child('Medi').child(uid).child('Tuesday').once().then((DataSnapshot dataSnapshot) {
      tue=dataSnapshot.value;

    });
    ref.child('Medi').child(uid).child('Wednesday').once().then((DataSnapshot dataSnapshot) {
      wed=dataSnapshot.value;

    });
    ref.child('Medi').child(uid).child('Thursday').once().then((DataSnapshot dataSnapshot) {
      thu=dataSnapshot.value;

    });
    ref.child('Medi').child(uid).child('Friday').once().then((DataSnapshot dataSnapshot) {
      fri=dataSnapshot.value;

    });
    ref.child('Medi').child(uid).child('Saturday').once().then((DataSnapshot dataSnapshot) {
      sat=dataSnapshot.value;

    });
    ref.child('Medi').child(uid).child('Sunday').once().then((DataSnapshot dataSnapshot) {
      sun=dataSnapshot.value;

    });
  }

}