import 'package:flutter/material.dart';
import 'package:nurseirator/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:nurseirator/medicine.dart';
import 'package:firebase_database/firebase_database.dart';
class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}
final _auth=FirebaseAuth.instance;
bool showSpinner = false;
String email;
String password;
class _loginScreenState extends State<loginScreen> {
  var mon,tue,wed,thu,fri,sat,sun;

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
                        User us=_auth.currentUser;
                        var uid=us.uid;
                        print(uid);
                        final ref=FirebaseDatabase.instance.reference();
                        dataa();
                        User user = _auth.currentUser;
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

                        /*Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => medical(uu: us.uid,mon: mon,tue: tue,wed: wed,thu: thu,fri: fri,sat: sat,sun: sun,),
                            ));*/
                        print("mos is"+'$mon');
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
void dataa()
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
  }

}
