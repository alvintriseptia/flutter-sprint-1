import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Chapter 9 ListView'),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          widgets.add(Text(
                            'Hello World $counter',
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 20),
                          ));
                          counter++;
                        });
                      },
                      child: Text('Tambah Data')),
                  RaisedButton(
                      onPressed: () {
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      },
                      child: Text('Hapus Data')),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
          )),
    );
  }
}
