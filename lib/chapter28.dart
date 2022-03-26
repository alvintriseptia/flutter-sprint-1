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
  TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(top: BorderSide(color: Colors.purple, width: 5))),
      indicatorColor: Colors.red,
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
          text: ("Comments"),
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: ("News"),
        ),
      ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Chapter 29 QR Code",
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                child: myTabBar,
                color: Colors.amber,
              )),
        ),
        body: TabBarView(children: [
          Center(child: Text("Comments")),
          Center(child: Text("Computer")),
        ]),
      ),
    );
  }
}
