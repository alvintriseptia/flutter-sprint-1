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
          body: Container()),
    );
  }
}
