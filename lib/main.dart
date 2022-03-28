import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/chapter53/bloc/user_bloc.dart';
import 'package:sprint1/chapter53/ui/main_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("judul")),
      body: Container(),
    );
  }
}

class Person {
  int _umur;
  set setUmur(int value) {
    _umur = value;
  }

  int get getUmur => _umur;
}
