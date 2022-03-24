import 'dart:ui';
import 'package:chapter1_10/chapter38/user_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Chapter 38 API Get Method Kumpulan Data')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            output,
          ),
          RaisedButton(
              onPressed: () => User.getUsers("2").then((users) {
                    output = "";
                    for (var user in users) {
                      output += user.id + " | " + user.name + "\n";
                    }
                    setState(() {});
                  }),
              child: Text("Get"))
        ],
      )),
    ));
  }
}
