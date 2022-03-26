import 'dart:math';

import 'package:sprint1/chapter16/login_page.dart';
import 'package:flutter/material.dart';

void main() {
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
      appBar: AppBar(
        title: Text("Chapter 23 Opacity"),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
              child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              elevation: 10,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4)),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,
                        50 + MediaQuery.of(context).size.height * .35, 20, 20),
                    child: Center(
                      child: Column(children: [
                        Text("Beautiful Sunset at Paddy Field",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xfff56D5D), fontSize: 25)),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Posted on ",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text("March 21, 2022",
                                  style: TextStyle(
                                      color: Color(0xfff56D5D), fontSize: 12)),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(flex: 10),
                            Icon(
                              Icons.thumb_up,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(flex: 1),
                            Text("99",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Spacer(
                              flex: 5,
                            ),
                            Icon(
                              Icons.comment,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text("888",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Spacer(
                              flex: 10,
                            ),
                          ],
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
