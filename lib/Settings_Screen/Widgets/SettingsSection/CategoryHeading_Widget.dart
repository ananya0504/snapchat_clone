import "package:flutter/material.dart";

Widget categoryHeading(context, text)
{
  return Padding(
    padding: EdgeInsets.only(top:8),
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        //borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal:15,
          vertical: 12
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.green,
            fontSize: 14,
            fontWeight: FontWeight.w600, 
          ),
        ),
      ),
    ),
  );
  
}