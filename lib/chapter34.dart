import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Chapter 34 Flutter 1.7')),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Contoh 01 Tanpa apapun", style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Text(
                "Contoh 02 (small caps)",
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable('smcp'),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Contoh 1/2 (small caps)",
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable('frac'),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Contoh Poppins (tanpa apapun)",
                style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Contoh Poppins 19 (tanpa apapun)",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontFeatures: [
                      FontFeature.oldstyleFigures(),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Contoh Poppins2 19 (default)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                "Contoh Poppins2 19 (default)",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontFeatures: [
                      FontFeature.stylisticSet(5),
                    ]),
              )
            ]),
          )),
    );
  }
}
