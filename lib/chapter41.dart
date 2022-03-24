import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;

  // prefs like local storage or session storage in web
  void saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", controller.text);
    prefs.setBool("isON", isON);
  }

  Future<String> getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name") ?? "No Name";
  }

  Future<bool> getIsON() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("isON") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Chapter 41 Shared Preferences')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller,
          ),
          Switch(
              value: isON,
              onChanged: (newValue) {
                setState(() {
                  isON = newValue;
                });
              }),
          RaisedButton(
            onPressed: () {
              saveData();
            },
            child: Text("Save"),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                getName().then((s) {
                  controller.text = s;
                });
                getIsON().then((b) {
                  isON = b;
                });
              });
            },
            child: Text("Load"),
          ),
        ],
      )),
    ));
  }
}
