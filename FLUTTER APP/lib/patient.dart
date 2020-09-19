import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

          ],

        ),
      ),
    );
  }
}
