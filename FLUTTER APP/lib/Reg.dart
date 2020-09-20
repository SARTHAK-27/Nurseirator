import 'package:flutter/material.dart';
import 'package:nurseirator/button.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class registration extends StatefulWidget {
  @override
  _registrationState createState() => _registrationState();
}

final DBRef = FirebaseDatabase.instance.reference();
final FirebaseAuth _auth = FirebaseAuth.instance;
bool showSpinner = false;
class _registrationState extends State<registration> {
  @override
  String initial = 'male';
  List gender = ['male', 'female', 'others'];
  String role = 'Doctor';
  List roole = ['Doctor', 'Nurse', 'Patient'];
  String name, address, city, email, password, phone, state, zipcode;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: ListView(
          padding: EdgeInsets.all(10),
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
              child: Text(
                'Nurseirator',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        name = value;
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        address = value;
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'City',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        city = value;
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        email = value;
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0)),
                        child: DropdownButton(
                            hint: Text('Enter your gender'),
                            dropdownColor: Colors.blueGrey,
                            elevation: 5,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            value: initial,
                            onChanged: (value) {
                              setState(() {
                                initial = value;
                              });
                            },
                            items: gender.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        password = value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Phone No',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        phone = value;
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Role',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2.0)),
                      child: DropdownButton(
                          hint: Text('Enter your Role'),
                          dropdownColor: Colors.grey,
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 30,
                          value: role,
                          onChanged: (value) {
                            setState(() {
                              role = value;
                            });
                          },
                          items: roole.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'State',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        state = value;
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
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Zipcode',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        zipcode = value;
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
            SizedBox(
              height: 10,
            ),
            buttonn(
                colour: Colors.blueAccent,
                chilld: Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                onpress: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final newuser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);

                    if (newuser != null) {
                      write();
                      if(role=='Patient')
                        {
                          Navigator.pushNamed(context, '/patient');
                        }
                      else if(role=='Nurse')
                        {
                          Navigator.pushNamed(context, '/nurse');
                        }
                      if(role=='Doctor'){
                        Navigator.pushNamed(context, '/nurse');
                      }
                      print('done');
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                    setState(() {
                      showSpinner = false;
                    });
                  }
                }),
          ],
        ),
      ),
    );
  }

  void write() {
    User user = _auth.currentUser;
    var uid = user.uid;
    if (role == 'Doctor') {
      DBRef.child("doctor").child(uid).set({
        'Name': name,
        'Address': address,
        'City': city,
        'Email': email,
        'Gender': initial,
        'Password': password,
        'Phone No': phone,
        'Role': role,
        'State': state,
        'ZipCode': zipcode,
        'uid':uid,
      });
    } else if (role == 'Nurse') {
      DBRef.child("nurse").child(uid).set({
        'Name': name,
        'Address': address,
        'City': city,
        'Email': email,
        'Gender': initial,
        'Password': password,
        'Phone No': phone,
        'Role': role,
        'State': state,
        'ZipCode': zipcode,
        'uid':uid,
      });
    } else {
      DBRef.child("patient").child(uid).set({
        'Name': name,
        'Address': address,
        'City': city,
        'Email': email,
        'Gender': initial,
        'Password': password,
        'Phone No': phone,
        'Role': role,
        'State': state,
        'ZipCode': zipcode,
        'uid':uid,
      });
    }
  }

  void read() {
    DBRef.once().then((DataSnapshot dataSnapshot) {
      print(dataSnapshot.value);
    });
  }

  void update() {
    DBRef.child("doctor").update({
      'Name': name,
      'Address': address,
      'City': city,
      'Email': email,
      'Gender': initial,
      'Password': password,
      'Phone No': phone,
      'Role': role,
      'State': state,
      'ZipCode': zipcode,
    });
  }
}
