import 'package:flutter/material.dart';
import '../User_Details_Screen/userDetails_Screen.dart';

class del5 extends StatefulWidget {
  @override
  _del5State createState() => _del5State();
}

class _del5State extends State<del5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 20,
              ),
            ),
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return UserDetails(); 
                  },
                );
              },
              child: Container(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.supervised_user_circle,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size:30,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>null));
              },
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Spot Light",
                  style: TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context){
                      // TODO: Friend's screen is to be made
                      return;
                    }
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                  left:45,
                  right: 8,
                  ),
                  child: Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  )
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Text(
            "SCREEN 5",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white
            ),
          ),
        ),
        
      ),
    );
  }
}