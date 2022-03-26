import 'dart:math';

import 'package:sprint1/chapter16/login_page.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Center(
        child: QrImage(
          version: 6,
          data: 'https://www.siap.undip.ac.id',
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(0),
          size: 300,
        ),
      )),
    );
  }
}
