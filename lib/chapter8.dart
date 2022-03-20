import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapter 8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chapter 8 Text Style'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
                decorationThickness: 5.0,
                decorationStyle: TextDecorationStyle.dotted),
          ),
        ),
      ),
    );
  }
}
