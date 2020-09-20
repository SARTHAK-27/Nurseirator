import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nurseirator/button.dart';
class medical extends StatefulWidget {
  @override
  medical({this.uu,this.mon,this.tue,this.wed,this.thu,this.fri,this.sat,this.sun});
  final mon,tue,wed,thu,fri,sat,sun,uu;
  _medicalState createState() => _medicalState();
}
final _auth = FirebaseAuth.instance;
final User user = _auth.currentUser;
final uid = user.uid;
final ref=FirebaseDatabase.instance.reference();

class _medicalState extends State<medical> {
  @override
  /*void initState()
  {
    User user = _auth.currentUser;
    var uid = widget.uu;
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
    super.initState();
  }*/
  @override

  Widget build(BuildContext context) {
    //@override
    /*void initState()
    {
      User user = _auth.currentUser;
      var uid = widget.uu;
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
      super.initState();
    }*/
    //dataa();
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          Center(
            child: Container(
              height: 200,
              width:320,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(border: Border.all(),
                color: Colors.grey),
                child: Column(
                  children: [
                    Text('Monday',
                    style: TextStyle(fontSize: 50,
                    fontWeight: FontWeight.bold),),
                    Text(widget.mon,style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
          ),
          Center(
            child: Container(
              height: 200,
              width:320,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Tuesday',
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold),),
                  Text(widget.tue,style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 200,
              width:320,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Wednesday',
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold),),
                  Text(widget.wed,style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 200,
              width:320,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Thursday',
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold),),
                  Text(widget.thu,style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 200,
              width:320,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Friday',
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold),),
                  Text(widget.fri,style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),Center(
            child: Container(
              height: 200,
              width:320,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Saturday',
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold),),
                  Text(widget.sat,style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 200,
              width:320,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(border: Border.all(),
                  color: Colors.grey),
              child: Column(
                children: [
                  Text('Sunday',
                    style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold),),
                  Text(widget.sun,style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 50,
            child: buttonn(
              colour: Colors.orangeAccent,
              onpress: (){},
              chilld: Text("Book Nurse",
              style: TextStyle(fontWeight: FontWeight.w700,
              fontSize: 30),),
            ),
          ),

        ],

      ),
    );
  }
  /*void dataa()
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
  }*/

}
