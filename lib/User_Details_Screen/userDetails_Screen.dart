import 'package:SnapchatClone/Settings_Screen/Settings_Screen.dart';
import 'package:SnapchatClone/User_Details_Screen/Widgets/StorySection/storiesText_Widget.dart';
import 'package:SnapchatClone/User_Details_Screen/Widgets/addHeading_Widget.dart';
import 'package:SnapchatClone/User_Details_Screen/Widgets/CreateOption_Widget.dart';
import 'package:SnapchatClone/User_Details_Screen/Widgets/SnapMapSection/SnapMapWidget_Map.dart';
import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          padding: EdgeInsets.only(top:25),
          child: Container(
            //color: Colors.white,
            //elevation: 0,
            //automaticallyImplyLeading: false,
            child:Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    child:Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Settings()));
                    }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SwipeDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(top: 5),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1), 
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:15),
                      child: Text(
                        "Ananya Gupta",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:5),
                      child: Text(
                        "ananya_0504 * 66,426 * T",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),

                    //Stories
                    AddStoryHeading("Stories"),
                    CreateOption("Add to My Story", Icons.camera_alt_outlined, Colors.blue,),
                    CreateOption("Add to Snap Map", Icons.camera_alt_outlined, Colors.blue,),

                    //Spotlight
                    AddHeadingText("Spotlight"),
                    CreateOption("My Spotlight Favourites", Icons.favorite_border, Colors.grey[600]),

                    //Friends
                    AddHeadingText("Friends"),
                    CreateOption("Add Friends", Icons.add_box_outlined, Colors.grey[600]),
                    CreateOption("My Friends", Icons.people_alt_outlined, Colors.grey[600]),

                    //Bitmoji
                    AddHeadingText("Bitmoji"),
                    CreateOption("Change My Outfit", Icons.shopping_cart_outlined, Colors.grey[600]),
                    CreateOption("Edit My Bitmoji", Icons.edit_outlined, Colors.grey[600]),
                    CreateOption("Select Selfie", Icons.account_box_rounded, Colors.grey[600]),

                    //SnapMap
                    AddHeadingText("Snap map"),
                    SnapMap_Map(context),
                    
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Icon(
                        Icons.self_improvement_sharp,
                        color: Colors.black,
                        size: 30,
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10),
                      child: Text(
                        "Joined Snapchat on 23 March 2017",
                        style: TextStyle(
                          fontSize: 14 ,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            )
          ),
        ),
        onSwipeLeft: (){
          Navigator.pop(context);
        },
        onSwipeUp: (){
          Navigator.pop(context);
        },
        onSwipeRight: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}