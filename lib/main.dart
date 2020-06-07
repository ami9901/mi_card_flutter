import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        //Safe area takes up the space which is visible , ignoring the phone notch, etc
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min, //setting the size that the column should take up to minimum, by default it is maximum
            verticalDirection: VerticalDirection.up, // Direction in which the children would lay out on the vertical axis, up is towards upwards , by default it is downwards
            children: <Widget>[
              Container(
                  //Container with no children try to be as big as possible
                  width: 100.0,
                  height: 100.0,
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 30.0),
                  padding: EdgeInsets.all(5.0),
                  //Containers with children, size themselves to their children
                  child: Text("Container 1")),
              Container(
                  //Container with no children try to be as big as possible
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                  margin: EdgeInsets.only(left: 30.0),
                  padding: EdgeInsets.all(5.0),
                  //Containers with children, size themselves to their children
                  child: Text("Container 2")),
              Container(
                  //Container with no children try to be as big as possible
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                  margin: EdgeInsets.only(left: 30.0),
                  padding: EdgeInsets.all(5.0),
                  //Containers with children, size themselves to their children
                  child: Text("Container 3"))
            ],
          ),
        ),
      ),
    );
  }
}
