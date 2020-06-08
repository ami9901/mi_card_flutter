import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        //Safe area takes up the space which is visible , ignoring the phone notch, etc
        body: SafeArea(
          child: Row(
            //mainAxisSize: MainAxisSize.min, //setting the size that the column should take up to minimum, by default it is maximum
            //verticalDirection: VerticalDirection.up, // Direction in which the children would lay out on the vertical axis, up is towards upwards , by default it is downwards
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, //align the column axis from center, space children evenly,etc.
            crossAxisAlignment: CrossAxisAlignment
                .stretch, // for a column cross alignment is horizontal axis and vice versa for a row
            children: <Widget>[
              Container(
                //Container with no children try to be as big as possible
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
              // specify width for spacing containers in row and height for column containers
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                  ),
                ],
              )),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
