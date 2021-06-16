import 'package:flutter/material.dart';

Widget TwoItem(text1, text2)
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
        Text(
          text2,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),
        )
      ],
    ),
  );
}