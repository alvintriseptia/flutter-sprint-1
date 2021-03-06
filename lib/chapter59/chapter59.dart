import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/chapter59/bloc/counter_bloc.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: MainPage(),
        ));
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc cbloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("chapter 59 Flutter bloc"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.count.toString(),
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              );
            },
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  cbloc.add(Decrement());
                },
                child: Icon(Icons.arrow_downward),
              ),
              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {
                  cbloc.add(Increment());
                },
                child: Icon(Icons.arrow_upward),
              )
            ],
          )
        ],
      )),
    );
  }
}
