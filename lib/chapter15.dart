import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.green;
  Color targetColor;
  bool isAccept = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title:
                  Text('Chapter 15 Draggable, DragTarget, SizedBox, Material'),
              //mengatasi perbedaan ukuran layar tiap android
              //dengan membuat flexible layout
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Draggable<Color>(
                      data: color1,
                      child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: Colors.red,
                            shape: StadiumBorder(),
                            elevation: 3, //shadow
                          )),
                      childWhenDragging: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          )),
                      feedback: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color1.withOpacity(0.5),
                            shape: StadiumBorder(),
                            elevation: 0.7, //shadow
                          )),
                    ),
                    Draggable<Color>(
                      data: color2,
                      child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color2,
                            shape: StadiumBorder(),
                            elevation: 3, //shadow
                          )),
                      childWhenDragging: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          )),
                      feedback: SizedBox(
                          width: 50,
                          height: 50,
                          child: Material(
                            color: color2.withOpacity(0.5),
                            shape: StadiumBorder(),
                            elevation: 0.7, //shadow
                          )),
                    ),
                    DragTarget<Color>(
                      onWillAccept: (value) => true,
                      onAccept: (value) {
                        isAccept = true;
                        targetColor = value;
                      },
                      builder: (context, candidates, rejected) {
                        return (isAccept)
                            ? SizedBox(
                                width: 100,
                                height: 100,
                                child: Material(
                                  color: targetColor,
                                  shape: StadiumBorder(),
                                  elevation: 0.7, //shadow
                                ))
                            : SizedBox(
                                width: 100,
                                height: 100,
                                child: Material(
                                  color: Colors.grey,
                                  shape: StadiumBorder(),
                                  elevation: 0, //shadow
                                ));
                      },
                    )
                  ],
                )
              ],
            )));
  }
}
