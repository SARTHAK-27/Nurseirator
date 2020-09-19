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
class _registerScreenState extends State<registerScreen> {
  String email;
  String password;
  String initial='male';
  String role='Doctor';
  List gender=['male','female','others'];
  List roole=['Doctor','Nurse','Patient'];
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
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2.0)),
                  child: DropdownButton(
                    hint: Text('Enter your gender'),
                    dropdownColor: Colors.deepOrange,
                    elevation: 5,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 30,
                    value: initial,
                      onChanged: (value){
                      setState(() {
                        initial=value;
                      });
                      },
                  items:gender.map((value) {return DropdownMenuItem(
                    value: value,
                    child: Text(value),);}).toList()),
                ),
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
