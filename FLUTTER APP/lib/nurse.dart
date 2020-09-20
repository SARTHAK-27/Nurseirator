import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'button.dart';
class nurse extends StatefulWidget {
  @override
  _nurseState createState() => _nurseState();
}
final DBRef = FirebaseDatabase.instance.reference();
FirebaseDatabase fb;
String initial = 'one week ago';
List test = ['one week ago', 'one month ago', 'more than a month ago'];
String defaul1='00';
List deef1=['00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23'];
String defaul2='00';
List deef2=['00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59'];
String defa1='00';
List deefe1=['00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23'];
String def2='00';
List deefe2=['00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59'];
class _nurseState extends State<nurse> {
  final _auth = FirebaseAuth.instance;
  String lis,hos,name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Nurse Details",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        name=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medical License No',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Liscense No',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {
                        lis=value;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Medical License No',
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
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Hospital',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {hos=value;},
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter Your Hospital Name',
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Availability',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Time in 24hr format',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0)),
                        child: DropdownButton(
                            hint: Text('Enter your time'),
                            dropdownColor: Colors.blueGrey,
                            elevation: 5,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            value: defaul1,
                            onChanged: (value) {
                              setState(() {
                               defaul1 = value;
                              });
                            },
                            items: deef1.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0)),
                        child: DropdownButton(
                            hint: Text('Enter your time'),
                            dropdownColor: Colors.blueGrey,
                            elevation: 5,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            value: defaul2,
                            onChanged: (value) {
                              setState(() {
                                defaul2 = value;
                              });
                            },
                            items: deef2.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      'To',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0)),
                        child: DropdownButton(
                            hint: Text('Enter your time'),
                            dropdownColor: Colors.blueGrey,
                            elevation: 5,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            value: defa1,
                            onChanged: (value) {
                              setState(() {
                                defa1 = value;
                              });
                            },
                            items: deefe1.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0)),
                        child: DropdownButton(
                            hint: Text('Enter your time'),
                            dropdownColor: Colors.blueGrey,
                            elevation: 5,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            value: def2,
                            onChanged: (value) {
                              setState(() {
                                def2 = value;
                              });
                            },
                            items: deefe2.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    'Address Proof',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Flexible(
                    child: TextField(
                      onChanged: (value) {},
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: 'Upload the Address Proof',
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
              height: 20,
            ),
            Row(

              children: [
                Text(
                  'Corona Test',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                          items: test.map((value) {
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
            SizedBox(height: 20,),
            buttonn(chilld: Text('Submit'),
            colour: Colors.grey,
            onpress: (){
              write();
            },)
          ],
        ),
      ),
    );
  }
  void write()
  {
    User user = _auth.currentUser;
    var uid = user.uid;
    DBRef.child("available").child(uid).set({
      'name':name,
      'License':lis,
      'hospital':hos,
      'from':defaul1+defaul2,
      'to':defa1+def2,
      'corona test':initial,
    });
  }
}
