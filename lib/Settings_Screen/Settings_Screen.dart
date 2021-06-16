import 'package:SnapchatClone/Settings_Screen/Widgets/SettingsSection/twoItems_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widgets/SettingsSection/CategoryHeading_Widget.dart';
import 'Widgets/SettingsSection/SingleItem_Widget.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context),
          icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.green,
            ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.green,
            fontSize: 24
          ),
        ),
      ),
      body: Container(
        child:SingleChildScrollView(
          child: Column(
            children: [

              categoryHeading(context, "MY ACCOUNT"),
              TwoItem("Name", "Ananya Gupta"),
              Divider(color: Colors.grey[300], height: 0.5,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal:15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "ananya_0504",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.grey[700],
                          size: 18,
                        ),
                      ] 
                    ),
                  ],
                )
              ),
              Divider(color: Colors.grey[300], height: 0.5,),
              TwoItem("Birthday", "05/04/2000"),
              Divider(color: Colors.grey[300], height: 0.5,),
              TwoItem("Mobile Number", "95XXXXXXXX"),
              Divider(color: Colors.grey[300], height: 0.5,),
              TwoItem("Email", "ananyagupta0504@gmail.com"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Password"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Two-Factor Authentication"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Connected Apps"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Notifications"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Bitmoji"),
              Divider(color: Colors.grey[300], height: 0.5,),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Shazam"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Apps from Snap"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Language"),
              Divider(color: Colors.grey[300], height: 0.5,),

              categoryHeading(context, "ADDITIONAL SERVICES"),
              SingleItem("Manage"),
              Divider(color: Colors.grey[300], height: 0.5,),

              categoryHeading(context, "WHO CAN ..."),
              TwoItem("Contact Me", "Everyone"),
              Divider(color: Colors.grey[300], height: 0.5,),
              TwoItem("Use My Cameos Selfie", "Only Me"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Send Me Notifications"),
              Divider(color: Colors.grey[300], height: 0.5,),
              TwoItem("View My Story", "Friends Only"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("See Me In Quick Add"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("See My Location"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Memories"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Spectacles"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Customise Emojis"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Ads"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Data Saver"),
              Divider(color: Colors.grey[300], height: 0.5,),

              categoryHeading(context, "PRIVACY"),
              SingleItem("Clear Conversation"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Clear Search History"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Clear Top Locations"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Contact Syncing"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Spotlight & Snap Map Snaps"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Permissions"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("My Data"),
              Divider(color: Colors.grey[300], height: 0.5,),

              categoryHeading(context, "SUPPORT"),
              SingleItem("I Need Help"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("I Have a Safety Concern"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("I Have a Privacy Question"),
              Divider(color: Colors.grey[300], height: 0.5,),

              categoryHeading(context, "FEEDBACK"),
              SingleItem("I Spotted a Bug"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("I Have a Suggestion"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Shake to Report"),
              Divider(color: Colors.grey[300], height: 0.5,),

              categoryHeading(context, "MORE INFORMATION"),
              SingleItem("Privacy Policy"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Safety Centre"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Terms of Service"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Other Legal"),
              Divider(color: Colors.grey[300], height: 0.5,),

              categoryHeading(context, "ACCOUNT ACTIONS"),
              SingleItem("Clear Cache"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Clear Lens Data"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Clear My Cameos Selfie"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Clear Scan History"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Clear Voice Scan History"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Blocked"),
              Divider(color: Colors.grey[300], height: 0.5,),
              SingleItem("Log Out"),
              Divider(color: Colors.grey[300], height: 0.5,),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical:10),
                color: Colors.grey[200],
                child: Container(
                  //height: 45,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("Snapchat v11.20.0.36"),
                      Text("Made in Los Angeles"),
                    ],
                  ),
                ),

              )
            ]
          )
        ),
      ),
    );
  }
}