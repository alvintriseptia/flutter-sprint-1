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
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Chapter 20 TextField Decoration"),
            ),
            body: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.lightBlue,
                          filled: true,
                          suffixIcon: Icon(Icons.email),
                          prefixIcon: Icon(Icons.account_box),
                          prefixText: "Name :",
                          prefixStyle: TextStyle(color: Colors.blue),
                          labelText: "Nama Lengkap",
                          hintText: "Name lengkapnya",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onChanged: (value) => setState(() {}),
                      controller: controller),
                  Text(controller.text),
                ],
              ),
            )));
  }
}
