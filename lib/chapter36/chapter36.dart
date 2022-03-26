import 'dart:ui';
import 'package:sprint1/chapter36/post_result_method.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Chapter 36 API Get Method')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            postResult != null
                ? postResult.id +
                    " | " +
                    postResult.name +
                    " | " +
                    postResult.job +
                    " | " +
                    postResult.createdAt
                : 'Tidak ada data',
          ),
          RaisedButton(
              onPressed: () =>
                  PostResult.connectToAPI("Badu", "Dokter").then((value) {
                    setState(() {
                      postResult = value;
                    });
                  }),
              child: Text("POST"))
        ],
      )),
    ));
  }
}
