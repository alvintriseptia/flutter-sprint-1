import 'dart:math';

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
            title: Text('Chapter 13 Image Widget'),
            //mengatasi perbedaan ukuran layar tiap android
            //dengan membuat flexible layout
          ),
          body: Center(
            child: Container(
              color: Colors.black,
              width: 200,
              height: 200,
              padding: EdgeInsets.all(3),
              child: Image(
                image: AssetImage("assets/images/bola.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
