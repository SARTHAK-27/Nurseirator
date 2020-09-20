import 'package:flutter/material.dart';
class boxy extends StatelessWidget {
  @override
  boxy({this.height});
  final double height;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Text("Monday:")
        ],
      ),
    );
  }
}
