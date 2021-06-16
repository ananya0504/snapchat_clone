import 'package:flutter/material.dart';

Widget AddHeadingText(text){
  return Container(
    padding: EdgeInsets.only(
      left: 20,
      right: 20,
      top: 25,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$text",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}