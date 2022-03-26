import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/chapter45/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
          create: (_) => ColorBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              context.read<ColorBloc>().add(ColorEvent.to_amber);
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              context.read<ColorBloc>().add(ColorEvent.to_blue);
            },
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Chapter 45 BLoC dengan Library',
        ),
      ),

      // Provider state management is a way to manage the state of a widget tree
      // in a way that is easy to understand and maintain.
      body: Center(
          child: BlocBuilder<ColorBloc, Color>(
        builder: (context, currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 100,
            height: 100,
            color: currentColor),
      )),
    );
  }
}
