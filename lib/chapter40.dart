import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double myPadding = 5;

  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Chapter 40 AnimatedPadding')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = 10;
                        });
                      },
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = 15;
                        });
                      },
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = 15;
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myPadding = 20;
                          });
                        },
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = 25;
                        });
                      },
                      child: AnimatedPadding(
                        duration: Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      )),
    ));
  }
}
