// import 'dart:ui';
// import 'package:sprint1/chapter42/application_color.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: ChangeNotifierProvider<ApplicationColor>(
//       create: (context) => ApplicationColor(),
//       child: Scaffold(
//         appBar: AppBar(
//             backgroundColor: Colors.black,
//             title: Consumer<ApplicationColor>(
//               builder: (context, applicationColor, _) => Text(
//                 'Chapter 42 Provider State Management',
//                 style: TextStyle(color: applicationColor.color),
//               ),
//             )),
//         // Provider state management is a way to manage the state of a widget tree
//         // in a way that is easy to understand and maintain.
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Consumer<ApplicationColor>(
//               builder: (context, applicationColor, _) => AnimatedContainer(
//                 duration: Duration(milliseconds: 500),
//                 width: 100,
//                 height: 100,
//                 color: applicationColor.color,
//                 margin: EdgeInsets.all(5),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   child: Text("AB"),
//                 ),
//                 Consumer<ApplicationColor>(
//                     builder: (context, applicationColor, _) => Switch(
//                         value: applicationColor.isLightBlue,
//                         onChanged: (newValue) {
//                           applicationColor.isLightBlue = newValue;
//                         })),
//                 Container(
//                   margin: EdgeInsets.all(5),
//                   child: Text("LB"),
//                 ),
//               ],
//             )
//           ],
//         )),
//       ),
//     ));
//   }
// }
