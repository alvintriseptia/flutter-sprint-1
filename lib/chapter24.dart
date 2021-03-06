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
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Stack(children: [
        Positioned(
          right: -getSmallDiameter(context) / 3,
          top: -getSmallDiameter(context) / 3,
          child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffb226b2), Color(0xffff6da7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              )),
        ),
        Positioned(
          left: -getBigDiameter(context) / 4,
          top: -getBigDiameter(context) / 4,
          child: Container(
              child: Center(
                child: Text("dribblee",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 30,
                        color: Colors.white)),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffb226b2), Color(0xffff4891)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              )),
        ),
        Positioned(
          right: -getBigDiameter(context) / 2,
          bottom: -getBigDiameter(context) / 2,
          child: Container(
              child: Center(
                child: Text("dribblee",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 30,
                        color: Colors.white)),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfff3e9e9),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email, color: Color(0xffff4891)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffff4891)),
                        ),
                        labelText: "Email : ",
                        labelStyle: TextStyle(color: Color(0xffff4891))),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.key, color: Color(0xffff4891)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffff4891)),
                        ),
                        labelText: "Password : ",
                        labelStyle: TextStyle(color: Color(0xffff4891))),
                  )
                ]),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 20),
                    child: Text(
                      "FORGOT PASSWORD?",
                      style: TextStyle(color: Color(0xffff4891), fontSize: 11),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.purple,
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0xffb226b2), Color(0xffff4891)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Icon(Icons.facebook),
                      ),
                      FloatingActionButton(
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Icon(Icons.telegram),
                      )
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DON'T HAVE AN ACCOUNT?",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  Text("SIGN UP?",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color(0xffff4891),
                          fontWeight: FontWeight.w500)),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
