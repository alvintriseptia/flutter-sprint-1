import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sprint1/chapter49/product_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.green, BlendMode.screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ColorFiltered(
      colorFilter: colorFilter,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red[900],
            title: Text('Chapter 50 Flutter 1.9'),
          ),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SelectableText(
                "Ini adalah selectable text",
                style: TextStyle(fontSize: 20),
                showCursor: true,
                cursorWidth: 4,
                cursorColor: Colors.red,
              ),
              SizedBox(
                height: 20,
              ),
              ToggleButtons(
                children: [
                  Icon(Icons.access_alarm),
                  Icon(Icons.adb),
                  Icon(Icons.add),
                ],
                isSelected: isSelected,
                onPressed: (index) => setState(() {
                  if (index == 0) {
                    colorFilter =
                        ColorFilter.mode(Colors.green, BlendMode.screen);
                  } else if (index == 1) {
                    colorFilter =
                        ColorFilter.mode(Colors.blue, BlendMode.softLight);
                  } else if (index == 2) {
                    colorFilter =
                        ColorFilter.mode(Colors.red, BlendMode.multiply);
                  }
                  isSelected[index] = !isSelected[index];
                }),
                fillColor: Colors.blue[50],
                selectedBorderColor: Colors.blue,
                selectedColor: Colors.blue[800],
                splashColor: Colors.red,
                highlightColor: Colors.yellow,
                borderRadius: BorderRadius.circular(15),
              )
            ]),
          )),
    ));
  }
}
