import 'package:flutter/material.dart';
import 'package:nurseirator/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
class registerScreen extends StatefulWidget {
  @override
  _registerScreenState createState() => _registerScreenState();
}
final DBRef=FirebaseDatabase.instance.reference();
final _auth=FirebaseAuth.instance;
final String ml='Doctor';
class _registerScreenState extends State<registerScreen> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                child: Flexible(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('image/doc.jpg'),
                  ),
                ),
              ),
              Text('Nurseirator',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40),),
              TextField(
                onChanged: (value) {
                  email=value;
                },
                style: TextStyle(color: Colors.white, fontSize: 25),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter email id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password=value;
                },
                style: TextStyle(color: Colors.white, fontSize: 25),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Set Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              DropdownButton<String>(
                  value: ml,
                  items: [
                    DropdownMenuItem(
                      child: Text('Doctor'),
                      value:'Doctor',
                    ),
                    DropdownMenuItem(
                      child: Text('Patient'),
                      value:'Patient',
                    ),
                    DropdownMenuItem(
                      child: Text('Nurse'),
                      value:'Nurse',
                    ),
                  ],
                ),
              buttonn(
                colour: Colors.lightBlue,
                chilld: Text('SignIn'),
                /*onpress: () async {
                  print(email);
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if(newUser!=null)
                      {
                        Navigator.pushNamed(context, '/');
                      }
                  }
                  catch(e)
                  {
                    print(e);
                  }
                }*/
                onpress: (){write();},

              ),
            ],
          ),
        ),
      ),
    );
  }
  void write()
  {
    DBRef.child("1").set({
      'title': 'Mastering EJB',
      'description': 'Programming Guide for J2EE'
    });
  }
}
