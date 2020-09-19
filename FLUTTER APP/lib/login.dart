import 'package:flutter/material.dart';
import 'package:nurseirator/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}
final _auth=FirebaseAuth.instance;
bool showSpinner = false;
String email;
String password;
class _loginScreenState extends State<loginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Center(
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
                    hintStyle: TextStyle(color: Colors.black87),
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
                    hintStyle: TextStyle(color: Colors.black87),
                    hintText: 'Enter Your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                buttonn(
                  colour: Colors.lightBlue,
                  chilld: Text('LogIn'),
                  onpress: () async{
                    setState(() {
                      showSpinner = true;
                    });

                    try{
                      final user=await _auth.signInWithEmailAndPassword(email: email, password: password);
                      print(email);
                      if(user!=null)
                      {
                        Navigator.pushNamed(context, '/patient');
                        print(email);
                      }
                      setState(() {
                        showSpinner = false;
                      });

                    }
                    catch(e)
                    {
                      print(e);
                      setState(() {
                        showSpinner = false;
                      });
                    }

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
