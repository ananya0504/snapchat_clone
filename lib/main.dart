import 'package:flutter/material.dart';
import 'Main_Screens/del_1.dart';
import 'Main_Screens/del_2.dart';
import 'Main_Screens/del_3.dart';
import 'Main_Screens/del_4.dart';
import 'Main_Screens/del_5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedItemIndex = 2;  //item currently selected
  Color _color; //color changing according to the items of the bottom navigation bar
  final widgetOptions =[
    del1(),
    del2(),
    del3(),
    del4(),
    del5()
  ]; // screens selected on the bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.black),
        padding: EdgeInsets.only(top: 10),
        child: Row( children: 
          [
            buildNavBarItem(Icons.home,0),
            buildNavBarItem(Icons.chat,1),
            buildNavBarItem(Icons.camera_alt,2),
            buildNavBarItem(Icons.people,3),
            buildNavBarItem(Icons.play_arrow,4),
          ],
        )
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedItemIndex),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index){
    return GestureDetector(
      onTap: (){
        setState((){
          _selectedItemIndex = index;
        });
      },child:Container(
        height: 55,
        width: MediaQuery.of(context).size.width/5,
        decoration: index==_selectedItemIndex?
          BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.3),
                Colors.yellow.withOpacity(0.015)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter
            )
          ):
          BoxDecoration(),
          child: Column(children: [
            Icon(
              icon,
              color:index==_selectedItemIndex
                ?_selectedItemIndex==0
                  ?Colors.green
                  : _selectedItemIndex==1
                    ? Colors.blue
                    : _selectedItemIndex == 2
                      ? Colors.yellow
                      : _selectedItemIndex == 3
                        ? Colors.purple
                        : _selectedItemIndex == 4
                          ? Colors.red
                          : Colors.grey
                : Colors.grey
            ),

            index==_selectedItemIndex
            ? Icon(
              Icons.arrow_drop_up,
              color:index==_selectedItemIndex
                  ?_selectedItemIndex==0
                    ?Colors.green
                    : _selectedItemIndex==1
                      ? Colors.blue
                      : _selectedItemIndex == 2
                        ? Colors.yellow
                        : _selectedItemIndex == 3
                          ? Colors.purple
                          : _selectedItemIndex == 4
                            ? Colors.red
                            : Colors.grey
                  : Colors.grey
            )
            : Container()
          ],
        ),
      )
    ); 
  }
}
