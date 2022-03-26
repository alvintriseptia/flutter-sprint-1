import 'dart:math';

import 'package:sprint1/chapter16/login_page.dart';
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Chapter 27 Tab Bar",
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.comment),
              text: ("Comments"),
            ),
            Tab(child: Image.asset("assets/images/bola.jpg")),
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              text: ("News"),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("Comments")),
          Center(child: Image.asset("assets/images/bola.jpg")),
          Center(child: Text("Computer")),
          Center(child: Text("News")),
        ]),
      ),
    );
  }
}
