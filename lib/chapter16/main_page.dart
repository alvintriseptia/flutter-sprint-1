import 'package:sprint1/chapter16/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(
          child: RaisedButton(
        child: Text("Go To Second Page"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
      )),
    );
  }
}
