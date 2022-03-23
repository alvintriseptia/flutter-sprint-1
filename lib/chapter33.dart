import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "Hasil QR Scan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chapter 33 QR Scanner'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text('Open Scanner'),
                onPressed: () async {
                  text = await scanner.scan();
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
