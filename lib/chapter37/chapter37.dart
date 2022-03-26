import 'dart:ui';
import 'package:sprint1/chapter37/user_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User user = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Chapter 37 API Post Method')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            user != null ? user.id + " | " + user.name : 'Tidak ada data',
          ),
          RaisedButton(
              onPressed: () => User.connectToAPI("4").then((value) {
                    user = value;
                    setState(() {});
                  }),
              child: Text("Get"))
        ],
      )),
    ));
  }
}
