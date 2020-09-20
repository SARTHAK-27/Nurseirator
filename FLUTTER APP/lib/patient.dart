import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:nurseirator/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class patient extends StatefulWidget {
  @override
  _patientState createState() => _patientState();
}
final DBRef = FirebaseDatabase.instance.reference();
FirebaseDatabase fb;
class _patientState extends State<patient> {
  final _auth = FirebaseAuth.instance;
  String message;
  String mail;
  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        mail = user.email;
      }
    } catch (e) {
      print(e);
    }
  }
  String initial='one week ago';
  List test=['one week ago','one month ago','more than a month ago'];
  String mon,tue,wed,thu,fri,sat,sun;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        color: Colors.blueAccent,
        child: ListView(
          children: [
            Center(
              child: Text("Medicines",
              style: TextStyle(fontSize: 50,
              fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  Text('Monday',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  SizedBox(width: 25,),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        mon=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medicine for Monday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                children: [
                  Text('Tuesday',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        tue=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medicine for Tuesday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                children: [
                  Text('Wednesday',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  SizedBox(width: 5,),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        wed=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medicine for Wednesday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                children: [
                  Text('Thursday',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        thu=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medicine for Thursday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                children: [
                  Text('Friday',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  SizedBox(width: 50,),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        fri=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medicine for Friday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                children: [
                  Text('Saturday',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  SizedBox(width: 25,),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        sat=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medicine for Saturday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                children: [
                  Text('Sunday',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  SizedBox(width: 40,),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        sun=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medicine for Sunday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Last Corona Test",
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 15),),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child:Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2.0)),
                    child: DropdownButton(
                        hint: Text('When was Last Corona Test'),
                        dropdownColor: Colors.blueGrey,
                        elevation: 5,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        value: initial,
                        onChanged: (value){
                          setState(() {
                            initial=value;
                          });
                        },
                        items:test.map((value) {return DropdownMenuItem(
                          value: value,
                          child: Text(value),);}).toList()),
                  ),),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              child: buttonn(
                colour: Colors.grey,
                chilld: Text('Update Detail'),
                onpress: (){
                  write();
                  print('done');
                  Navigator.pushNamed(context, '/medical');
                },
              ),
            ),

          ],

        ),
      ),
    );
  }
  void write()
  {
   User user = _auth.currentUser;
   var uid = user.uid;
    DBRef.child("Medi").child(uid).set({
      'Monday':mon,
      'Tuesday':tue,
      'Wednesday':wed,
      'Thursday':thu,
      'Friday':fri,
      'Saturday':sat,
      'Sunday':sun,
    });
  }
}
