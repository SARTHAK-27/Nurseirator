import 'package:flutter/material.dart';
class buttonn extends StatelessWidget {
  buttonn({this.chilld, this.colour, @required this.onpress});
  final Widget chilld;
  final Color colour;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: colour,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onpress,
        minWidth: 200.0,
        height: 42.0,
        child: chilld,
      ),
    );
  }
}
