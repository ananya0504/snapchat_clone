import 'package:flutter/material.dart';

Widget SnapMap_Map(context)
{
  return Column(
    children: [
      Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left:20,
              right:20,
              top:8,
            ),
            child: Container(
              height: 145,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/snapmap.jpg"),
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2,2),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left:20,
              right:20,
              top:8,
            ),
            child: Container(
              height: 145,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                ),
                color: Colors.black26
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Tap to Explore SnapMap",
                    style: TextStyle(
                      letterSpacing: 0.6,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:8,),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                        child: Text(
                          "Enter",
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.5,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.only(
          left:20,
          right:20,
          //top:8,
        ),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12.0),
              bottomLeft: Radius.circular(12.0)
            ), 
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
                Icons.settings_applications_rounded,
                color: Colors.grey[600],
                size:32
              ),
              Padding(
                padding: EdgeInsets.only(left:8),
                child: Text(
                  "Not Sharing Location",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right:8),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey[350],
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}