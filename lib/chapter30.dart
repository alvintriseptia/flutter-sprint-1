import 'dart:math';

import 'package:chapter1_10/chapter16/login_page.dart';
import 'package:chapter1_10/chapter30/colorful_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Chapter 30 Colorful Buttons",
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.purple, Colors.blue, Icons.comment),
              ColorfulButton(Colors.deepOrange, Colors.blue, Icons.facebook),
              ColorfulButton(Colors.blueAccent, Colors.blue, Icons.telegram),
            ],
          ),
        ));
  }
}
