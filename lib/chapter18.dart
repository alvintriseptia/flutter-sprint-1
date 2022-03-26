import 'dart:math';

import 'package:sprint1/chapter16/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text("Chapter 18 Card Widget"),
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
              children: [
                buildCard(Icons.account_box, "Account Box"),
                buildCard(Icons.adb, "Icon ADB"),
              ],
            ),
          )),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(children: [
        Container(
            margin: EdgeInsets.all(5),
            child: Icon(iconData, color: Colors.amber)),
        Text(text)
      ]),
    );
  }
}
