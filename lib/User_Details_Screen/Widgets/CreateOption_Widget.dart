import 'package:flutter/material.dart';

class CreateOption extends StatelessWidget {
  final IconData ic;
  final String text;
  final Color cl;
  
  CreateOption(this.text, this.ic, this.cl);
  @override
  Widget build(BuildContext context) {
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
            ic,
            color: cl,
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
}
