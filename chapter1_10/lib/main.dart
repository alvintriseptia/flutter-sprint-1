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
        title: Text('Chapter 1'),
      ),
      body: Center(
        child: Container(
            color: Colors.deepOrange,
            width: 150,
            height: 50,
            child: Text(
              'Bismillah semoga belajar flutter di kodingworks berjalan dengan lancarZZ',
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            )),
      ),
    ));
  }
}
