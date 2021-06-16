import 'package:flutter/material.dart';

class del3 extends StatefulWidget {
  @override
  _del3State createState() => _del3State();
}

class _del3State extends State<del3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.yellow,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Text(
          "SCREEN 3",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}