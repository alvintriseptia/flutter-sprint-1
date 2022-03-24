import 'dart:ui';
import 'package:chapter1_10/chapter38/user_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = false;

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
      appBar: AppBar(title: Text('Chapter 39 API Animated Switcher')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: myWidget,
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child)),
          Switch(
            activeColor: Colors.green,
            inactiveTrackColor: Colors.red,
            inactiveThumbColor: Colors.red[200],
            value: _isLoading,
            onChanged: (value) {
              _isLoading = value;
              setState(() {
                _isLoading
                    ? myWidget = Container(
                        key: ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 3)),
                      )
                    : myWidget = Container(
                        key: ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
              });
            },
          ),
        ],
      )),
    ));
  }
}
