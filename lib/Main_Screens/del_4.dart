import 'package:SnapchatClone/Main_Screens/4_widgets/discover.dart';
import 'package:SnapchatClone/Search_Screen/search_screen.dart';
import 'package:flutter/material.dart';
import '../User_Details_Screen/userDetails_Screen.dart';
import './4_widgets/subscriptions.dart';
import './4_widgets/discover.dart';
import './4_widgets/friends.dart';
import './4_widgets/quick_add.dart';

class del4 extends StatefulWidget {
  @override
  _del4State createState() => _del4State();
}

class _del4State extends State<del4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
                //TODO: SEARCH IMPLEMENTATION
                Icons.search,
                color: Colors.black,
                size:30,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Search()));
              },
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Stories",
                  style: TextStyle(
                    color:Colors.black,
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
                    //ADD FRIENDS
                    Icons.add_circle_outline_sharp,
                    color: Colors.black,
                    size: 30,
                  )
                ),
              ),
            ],
          )
        ],
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          color: Colors.white,
        ),
        ListView(
          padding: EdgeInsets.only(
            top:8,
            left:15
          ),
          children: [
            Container(
              child: Text(
                "Friends",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  right:8,
                  bottom: 8,
                  top: 4,
                ),
                children: [
                  Friends("Ananya", "Gupta"),
                  Friends("Anagh","Agrawal"),
                  Friends("Kanchan", "Tomar"),
                  Friends("Aniket", "Gupta"),
                ],
              )
            ),
            //SizedBox(height: 8,),
            Container(
              child: Text(
                "Quick Add",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  right:8,
                  bottom: 8,
                  top: 4,
                ),
                children: [
                  Quick_add("Tanya Bhardwaj"),
                  Quick_add("Kashish Gakhhar"),
                ],
              )
            ),
            Container(
              child: Text(
                "Subscriptions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  right:8,
                  bottom: 8,
                  top: 4,
                ),
                children: [
                  Subscription("Chaudvi ka chaand ho, ya aftaab ho"),
                  Subscription("Jo bhi ho khuda ki kasam, lajawab ho"),
                  Subscription("Something told me it was you, something told me it was you, something"),
                  Subscription("Jo bhi ho khuda ki kasam, lajawab ho"),
                  Subscription("Jo bhi ho khuda ki kasam, lajawab ho"),
                  Subscription("Jo bhi ho khuda ki kasam, lajawab ho"),
                ],
              )
            ),
            SizedBox(height: 8,),
            Container(
              child: Text(
                "Discover",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right:10,
                  top: 2,
              ),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1/1.5,
                mainAxisSpacing: 13,
                crossAxisSpacing: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Discover("Chaudvi ka chaand ho, ya aftaab ho"),
                  Discover("Jo bhi ho khuda ki kasam, lajawab ho"),
                  Discover("Something told me it was you, something told me it was you, something"),
                  Discover("Jo bhi ho khuda ki kasam, lajawab ho"),
                  Discover("Jo bhi ho khuda ki kasam, lajawab ho"),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        )
      ],
    ),
    );
  }
}