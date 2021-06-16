import 'package:flutter/material.dart';

Widget PrivateStory ()
{
  return Padding(
    padding: EdgeInsets.only(
      left:20,
      right:20,
      top:8,
    ),
    child: Container(
      height:45,
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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left:10,right:7),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.blue,
                  size: 32,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:0),
                    child: Text(
                      "Create A Private Story",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:4),
                    child: Text(
                      "A story for a specific friend to see",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right:8),
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.grey[350],
              size:30,
            ),
          )
        ],
      ),
      
        
    ),
  );
}
 