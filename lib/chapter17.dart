import 'dart:math';

import 'package:chapter1_10/chapter16/login_page.dart';
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
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title:
              Text('Chapter 17 AppBar', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff0096ff), Color(0xff6610f2)]),
                image: DecorationImage(
                    image: AssetImage('assets/images/pattern.png'),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat)),
          )),
      body: Center(child: Text("Belajar AppBar")),
    ));
  }
}
