import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  FocusNode inputNode = FocusNode();
  void openKeyboard(){
    FocusScope.of(context).requestFocus(inputNode);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextField(
                  focusNode: inputNode,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 32,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Navigator.of(context).pop();},
              child: Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.only(left:15, top:2, right:15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 18),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recents", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
                Row(
                  children: [
                    Text("Clear All", style: TextStyle(color: Colors.grey[600], fontSize: 16, fontWeight: FontWeight.w700),),
                    Icon(Icons.arrow_right_rounded, color: Colors.grey[600])
                  ],
                ),
              ],
            ),
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top:4, right:8, bottom:8),
                children: [
                  //TODO: COMPLETE WIDGET
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Games & Minis", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
              ],
            ),
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top:4, right:8, bottom:8),
                children: [
                  //TODO: COMPLETE WIDGET
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Quick Add", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
              ],
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top:4, right:8, bottom:8),
                children: [
                  //TODO: COMPLETE WIDGET
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Snap Stars", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
              ],
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top:4, right:8, bottom:8),
                children: [
                  //TODO: COMPLETE WIDGET
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Quick Add", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
              ],
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top:4, right:8, bottom:8),
                children: [
                  //TODO: COMPLETE WIDGET
                ],
              ),
            ),

            ],
          )
        ),
      ),
    );
  }
}