import 'dart:math';

import 'package:chapter1_10/chapter16/login_page.dart';
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
          title: Text("Chapter 22 Ink Well"),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          RaisedButton(
            onPressed: () {},
            color: Colors.amber,
            child: Text("Raised Button"),
            shape: StadiumBorder(),
          ),
          Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 2,
            child: Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  child: Center(
                    child: Text("Custom Button",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
