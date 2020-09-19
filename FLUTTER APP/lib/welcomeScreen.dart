import 'package:flutter/material.dart';
import 'package:nurseirator/button.dart';
class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('image/doc.jpg'),
              ),
                ),
              Text('Nurseirator',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 40),),
              SizedBox(height: 40,),
              Container(
                child: buttonn(
                  chilld: Text('New?SignIn',
                  style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black),),
                  colour: Colors.lightBlue,
                  onpress: (){Navigator.pushNamed(context,'/reg');},
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: buttonn(
                  chilld: Text('Login',
                  style:TextStyle(fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.black),),
                  colour: Colors.lightBlue,
                  onpress: (){
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
