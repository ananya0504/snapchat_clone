import 'package:flutter/material.dart';

Widget FriendsText(text){
  return Container(
    padding: EdgeInsets.only(
      left:20,
      right:20,
      top:8,
    ),
    child: Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0,1),
            blurRadius: 1,
            spreadRadius: 1,
          )
        ]
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left:10),),
          Icon(
            Icons.favorite_border,
            color: Colors.grey[600],
            size:32
          ),
          Padding(
            padding: EdgeInsets.only(left:8),
            child: Text(
              "$text",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right:8),
            child: Icon(Icons.keyboard_arrow_right, color: Colors.grey[350],size: 30,),
          )
        ],
      ),
    ),
  );
}