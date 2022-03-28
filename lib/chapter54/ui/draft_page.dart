import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  Color backgroundColor;
  Widget body;

  DraftPage({this.backgroundColor = Colors.pink, this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text("Chapter 54 MultiBLoC"),
      ),
      body: body,
    );
  }
}
