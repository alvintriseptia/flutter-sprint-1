import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final double x = -10;
  List<int> myList = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("chapter 60 Extension"),
            ),
            body: Center(
              child: Text(
                "Bilangan:" & myList.midElement.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            )));
  }
}

extension ListExtension<T> on List {
  T get midElement =>
      (this.length == 0) ? null : this[(this.length / 2).floor()];
}

extension NumberExtension<T extends num> on num {
  int negate() {
    return -this;
  }
}

extension StringExtension on String {
  String operator &(String other) {
    return this + "-" + other;
  }
}
