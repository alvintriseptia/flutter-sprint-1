import 'dart:math';

import 'package:sprint1/chapter16/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "nilai awal");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Chapter 19 TextField Widget"),
            ),
            body: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                      onChanged: (value) => setState(() {}),
                      controller: controller),
                  Text(controller.text),
                ],
              ),
            )));
  }
}
