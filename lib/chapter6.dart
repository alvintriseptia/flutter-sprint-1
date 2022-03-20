import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  void tekanTombol() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Chapter 6 Stateful Widget'),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      counter.toString(),
                      style: TextStyle(fontSize: 10 + counter.toDouble()),
                    ),
                    RaisedButton(
                        onPressed: tekanTombol, child: Text("Tambah angka"))
                  ]),
            )));
  }
}
