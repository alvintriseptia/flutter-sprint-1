import 'package:flutter/material.dart';
import 'package:sprint1/chapter46/user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
      name: "Alvin",
      role: "Developer",
      avatar:
          "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Chapter 46 Doc Document'),
        ),
        body: Center(
          child: profile,
        ),
      ),
    );
  }
}
