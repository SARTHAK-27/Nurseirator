import 'package:flutter/material.dart';
class box extends StatefulWidget {
  @override
  _boxState createState() => _boxState();
}
box({this.height});
final double height;
class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("This is box"),
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
class boxy extends StatelessWidget {
  @override
  boxy({this.height});
  final double height;
  Widget build(BuildContext context) {
    return Container();
  }
}
