import 'dart:async';

import 'package:flutter/material.dart';

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
          title: Text('Chapter 47 Timer'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  counter.toString(),
                  style: TextStyle(
                      color: isBlack ? Colors.black : Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
                RaisedButton(
                  onPressed: () {
                    Timer(Duration(seconds: 5), () {
                      setState(() {
                        isBlack = !isBlack;
                      });
                    });
                  },
                  child: Text('Ubah warna 5 detik kemudian'),
                ),
                RaisedButton(
                  onPressed: () {
                    Timer.run(() {
                      setState(() {
                        isBlack = !isBlack;
                      });
                    });
                  },
                  child: Text('Ubah warna secara langsung'),
                ),
                RaisedButton(
                  onPressed: () {
                    counter = 0;
                    isStop = false;
                    Timer.periodic(Duration(seconds: 1), (timer) {
                      if (isStop) {
                        timer.cancel();
                      }
                      setState(() {
                        counter++;
                      });
                    });
                  },
                  child: Text('Start timer'),
                ),
                RaisedButton(
                  onPressed: () {
                    isStop = true;
                  },
                  child: Text('Stop timer'),
                ),
              ]),
        ),
      ),
    );
  }
}
