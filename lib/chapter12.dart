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
            title: Text('Chapter 12 Stack & Align'),
            //mengatasi perbedaan ukuran layar tiap android
            //dengan membuat flexible layout
          ),
          body: Stack(
            children: [
              //background
              Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.red,
                              )),
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                              ))
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                              )),
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.red,
                              ))
                        ],
                      ))
                ],
              ),

              //listview
              ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 30)),
                      ),
                    ],
                  )
                ],
              ),
              //button
              Align(
                alignment: Alignment(0.5, 0.9),
                child: RaisedButton(
                    onPressed: () {},
                    child: Text("Button"),
                    color: Colors.amber),
              )
            ],
          )),
    );
  }
}
