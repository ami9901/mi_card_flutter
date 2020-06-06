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
          child: Container(
              //Container with no children try to be as big as possible
              width: 100.0,
              height: 100.0,
              color: Colors.white,
              margin: EdgeInsets.only(left: 30.0),
              padding: EdgeInsets.all(20.0),
              //Containers with children, size themselves to their children
              child: Text("Hello World!")),
        ),
      ),
    );
  }
}
