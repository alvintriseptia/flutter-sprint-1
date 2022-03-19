import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Chapter 4'),
            ),
            body: Container(
              color: Colors.amberAccent,
              margin: EdgeInsets.all(100),
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.red, Colors.blue],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )));
  }
}
