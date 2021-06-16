import "package:flutter/material.dart";

Widget Friends(String name, surname) {
  return Padding(
    padding: EdgeInsets.only(right: 8, top: 3),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                  width: 2,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            ),
            Container(
              height: 70,
              width: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Icon(
                Icons.refresh_rounded,
                color: Colors.white,
              ),
            ),
          ]
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.0),
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 1.0),
          child: Text(
            surname,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}
