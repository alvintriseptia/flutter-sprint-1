import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah pesan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Chapter 7 Anonymous Method'),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(message),
                    RaisedButton(
                        onPressed: () {
                          setState(() {
                            message = "pesan sudah dibaca";
                          });
                        },
                        child: Text("Tandai sudah dibaca"))
                  ]),
            )));
  }
}
