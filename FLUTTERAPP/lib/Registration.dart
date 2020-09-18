import 'package:flutter/material.dart';
import 'package:nurseirator/button.dart';
class registerScreen extends StatefulWidget {
  @override
  _registerScreenState createState() => _registerScreenState();
}
final String ml='Doctor';
class _registerScreenState extends State<registerScreen> {
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
                onpress: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
