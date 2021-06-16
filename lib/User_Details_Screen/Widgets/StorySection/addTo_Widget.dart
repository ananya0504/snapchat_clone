import 'package:flutter/material.dart';

Widget AddTo(text){
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
            color: Colors.black12,
            offset: Offset(2,2),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ]
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left:10),),
          Icon(
            Icons.camera_alt_outlined,
            color:Colors.blue,
            size:32
          ),
          Padding(
            padding: EdgeInsets.only(left:8),
            child: Text(
              "Add to $text",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right:8),
            child: Icon(Icons.more_horiz, color: Colors.grey[350],size: 30,),
          )
        ],
      ),
    ),
  );
}