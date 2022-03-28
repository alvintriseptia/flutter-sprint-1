import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/chapter54/bloc/color_bloc.dart';
import 'package:sprint1/chapter54/bloc/counter_bloc.dart';
import 'package:sprint1/chapter54/ui/main_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => ColorBloc()),
      BlocProvider(create: (context) => CounterBloc())
    ], child: MaterialApp(debugShowCheckedModeBanner: false, home: MainPage()));
  }
}
