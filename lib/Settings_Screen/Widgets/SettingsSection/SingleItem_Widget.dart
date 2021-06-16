import 'package:flutter/material.dart';

Widget SingleItem(text1)
{ return Container(
    padding: EdgeInsets.symmetric(vertical: 12, horizontal:15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}