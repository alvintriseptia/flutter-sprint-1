import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sprint1/chapter48/custom_progress_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Chapter 48 Custom Progress Bar'),
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            create: (_) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgressBar(
                    width: 200,
                    value: timeState.time ?? 0,
                    totalValue: 15,
                  ),
                ),
                SizedBox(height: 10),
                Consumer<TimeState>(
                  builder: (context, timeState, _) {
                    return RaisedButton(
                      onPressed: () {
                        Timer.periodic(Duration(seconds: 1), (timer) {
                          if (timeState.time == 0) {
                            timer.cancel();
                          } else {
                            timeState.time--;
                          }
                        });
                      },
                      color: Colors.lightBlue,
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
