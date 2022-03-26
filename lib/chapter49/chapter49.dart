import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sprint1/chapter49/product_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[900],
              title: Text('Chapter 48 Custom Progress Bar'),
            ),
            body: ChangeNotifierProvider<ProductState>(
              create: (_) => ProductState(),
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Consumer<ProductState>(
                        builder: (context, productState, _) => ProductCard(
                          imageURL: "assets/images/bola.jpg",
                          name: "Buah-buahan mix 1kg",
                          price: "Rp.25.000",
                          quantity: productState.quantity,
                          time: productState.time ?? 0,
                          notification:
                              (productState.quantity > 5) ? "Diskon 10%" : null,
                          onIncTap: () {
                            productState.quantity++;
                            productState.time++;
                          },
                          onDecTap: () {
                            if (productState.quantity > 0 &&
                                productState.time > 0) {
                              productState.quantity--;
                              productState.time--;
                            }
                          },
                          onAddCartTap: () {},
                        ),
                      ))),
            )));
  }
}

class ProductState with ChangeNotifier {
  int _quantity = 0;
  int _time = 0;

  int get quantity => _quantity;
  int get time => _time;
  set quantity(int value) {
    _quantity = value;
    notifyListeners();
  }

  set time(int value) {
    _time = value;
    notifyListeners();
  }
}
