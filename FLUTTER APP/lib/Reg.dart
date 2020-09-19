import 'package:flutter/material.dart';
import 'package:nurseirator/button.dart';
class registration extends StatefulWidget {
  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: [
          Center(
            child: Container(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('image/doc.jpg'),
              ),
            ),
          ),
          Center(
            child: Text('Nurseirator',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 40),),
          ),
          Container(
            child: Row(
              children: [
                Text('Name',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your Name',
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
          Container(
            child: Row(
              children: [
                Text('Address',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your Address',
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
          Container(
            child: Row(
              children: [
                Text('City',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your City',
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
          Container(
            child: Row(
              children: [
                Text('Email',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your Email',
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
          Container(
            child: Row(
              children: [
                Text('Gender',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Gender',
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
          Container(
            child: Row(
              children: [
                Text('Password',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
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
                ),

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                Text('Phone No',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your Phone no',
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
          Container(
            child: Row(
              children: [
                Text('Role',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your Role',
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
          Container(
            child: Row(
              children: [
                Text('State',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your State',
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
          Container(
            child: Row(
              children: [
                Text('Zipcode',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20),),
                Flexible(
                  child: TextField(
                    onChanged: (value) {
                    },
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter Your Zipcode',
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
          buttonn(
              colour: Colors.lightBlue,
              chilld: Text('Register'),
              onpress: ()  {

              }

          ),
        ],
      ),
    );
  }
}
