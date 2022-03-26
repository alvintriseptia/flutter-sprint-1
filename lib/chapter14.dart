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
        title: Text('Chapter 14 Spacer Widget'),
        //mengatasi perbedaan ukuran layar tiap android
        //dengan membuat flexible layout
      ),
      body: Center(
          child: Row(
        children: [
          Spacer(flex: 1),
          Container(width: 80, height: 80, color: Colors.red),
          Spacer(flex: 2),
          Container(width: 80, height: 80, color: Colors.blue),
          Spacer(flex: 3),
          Container(width: 80, height: 80, color: Colors.green),
          Spacer(flex: 2),
        ],
      )),
    ));
  }
}
