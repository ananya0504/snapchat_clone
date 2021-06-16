import 'package:flutter/material.dart';

Widget AddStoryHeading(text){
  return Container(
    padding: EdgeInsets.only(
      left: 20,
      right: 20,
      top: 20,
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
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(24)
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 6,
              horizontal:12
            ),
            child: Row(
              children: [
                Icon(Icons.add, size: 16,),
                Text(
                  " Private Story",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            )
          ),
        )
      ],
    ),
  );
}