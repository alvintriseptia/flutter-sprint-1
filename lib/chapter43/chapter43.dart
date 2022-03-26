// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sprint1/chapter43/cart.dart';
// import 'package:sprint1/chapter43/money.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: MultiProvider(
//       providers: [
//         ChangeNotifierProvider<Money>(
//           create: (context) => Money(),
//         ),
//         ChangeNotifierProvider<Cart>(
//           create: (context) => Cart(),
//         ),
//       ],
//       child: Scaffold(
//         floatingActionButton: Consumer<Money>(
//             builder: (context, money, _) => Consumer<Cart>(
//                   builder: (context, cart, _) => FloatingActionButton(
//                     onPressed: () {
//                       if (money.balance >= 500) {
//                         money.balance -= 500;
//                         cart.quantity++;
//                       }
//                     },
//                     child: Icon(Icons.add_shopping_cart),
//                     backgroundColor: Colors.purple,
//                   ),
//                 )),
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Text(
//             'Chapter 43 Multi Provider State Management',
//           ),
//         ),

//         // Provider state management is a way to manage the state of a widget tree
//         // in a way that is easy to understand and maintain.
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Consumer<Money>(
//                     builder: (context, money, _) => Text(
//                           money.balance.toString(),
//                           style: TextStyle(
//                               color: Colors.purple,
//                               fontWeight: FontWeight.bold),
//                         )),
//                 Container(
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Text("10000",
//                         style: TextStyle(
//                             color: Colors.purple, fontWeight: FontWeight.bold)),
//                   ),
//                   height: 30,
//                   width: 150,
//                   margin: EdgeInsets.all(5),
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Colors.purple[100],
//                       border: Border.all(width: 2, color: Colors.purple)),
//                 ),
//               ],
//             ),
//             Container(
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: Consumer<Cart>(
//                   builder: (context, cart, _) => Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Apple (500) x " + cart.quantity.toString(),
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w500)),
//                       Text((500 * cart.quantity).toString(),
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w500)),
//                     ],
//                   ),
//                 ),
//               ),
//               margin: EdgeInsets.all(5),
//               padding: EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   border: Border.all(width: 2, color: Colors.black)),
//             ),
//           ],
//         )),
//       ),
//     ));
//   }
// }
