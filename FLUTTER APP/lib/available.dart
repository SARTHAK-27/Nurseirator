
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nurseirator/button.dart';
import 'package:nurseirator/button.dart';
import 'data.dart';
final _auth = FirebaseAuth.instance;
final User user = _auth.currentUser;
final uid = user.uid;
final ref=FirebaseDatabase.instance.reference();


class avail extends StatefulWidget {
  @override
  _availState createState() => _availState();
}

class _availState extends State<avail> {
  List<Data> datalist=[];
  void initState()
  {
    DatabaseReference db=FirebaseDatabase.instance.reference().child("available");
    db.once().then((DataSnapshot snap){
      datalist.clear();
      var keys=snap.value.keys;
      var values=snap.value;
      for(var key in keys)
      {
        Data data=new Data(
            lis:values[key]['License'],test: values[key]['corona test'],from: values[key]['from'],to: values[key]['to'],hos: values[key]['hospital'],name: values[key]['name']
        );
        datalist.add(data);

      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    print(datalist.length);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: datalist.length==null?Text("No nurse Avilable"):ListView.builder(
      itemCount: datalist.length,
          itemBuilder: (_,index){
        return CardUI(datalist[index].lis,datalist[index].test,datalist[index].to,datalist[index].from,datalist[index].hos,datalist[index].name);
      }),
    );
  }
}
Widget CardUI(String lis,String test,String to,String from,String hos,String name){
  return Card(margin: EdgeInsets.all(20),
  color: Color(0xff2fc3),
  child: Container(
    color: Colors.white,
    margin: EdgeInsets.all(1.5),
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          children: [
            Text("Name:",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
            Text(name,
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text("License No:",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
            Text(lis,
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [Text("Hospital:",
            style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
          ),
            Text(hos,
                style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
              ),
          ],
        ),
        Row(
          children: [
            Text("Available From",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 40,),
            Text(from.substring(0,2)+":"+from.substring(2),
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
            Text(" To ",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
            Text(to.substring(0,2)+":"+to.substring(2),
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10,),
        buttonn(colour: Colors.grey
          ,
        chilld: Text('Book Now'),)
      ],
    ),
  ),);
}