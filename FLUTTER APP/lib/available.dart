import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nurseirator/button.dart';
final _auth = FirebaseAuth.instance;
final User user = _auth.currentUser;
final uid = user.uid;
final ref=FirebaseDatabase.instance.reference();
class avail extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          Container(
            child:Column(
              children: [

              ],
            ),
          ),
          buttonn(
            onpress: (){
            add();}
          ),
        ],
      ),
    );
  }
  void add()
  {
    User user = _auth.currentUser;
    var uid = user.uid;
    ref.child('available').once().then((DataSnapshot dataSnapshot) {
      print(dataSnapshot.value);
      print("co");

  });
  }
}
