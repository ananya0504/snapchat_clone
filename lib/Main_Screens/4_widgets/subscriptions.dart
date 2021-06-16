import "package:flutter/material.dart";

Widget Subscription(String text) {
  return Padding(
    padding: EdgeInsets.only(right: 8),
    child: Container(
      height: 60,
      width: 110,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Text(
          text,
          maxLines: 4,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
