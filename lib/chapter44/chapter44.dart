import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sprint1/chapter44/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              },
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_blue);
              },
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Chapter 44 BLoC tanpa Library',
          ),
        ),

        // Provider state management is a way to manage the state of a widget tree
        // in a way that is easy to understand and maintain.
        body: Center(
          child: StreamBuilder(
            stream: bloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 100,
                height: 100,
                color: snapshot.data,
              );
            },
          ),
        ),
      ),
    );
  }
}
