import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/chapter58/bloc/post_bloc.dart';
import 'package:sprint1/chapter58/ui/main_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
          create: (context) => PostBloc()..add(PostEvent()), child: MainPage()),
    );
  }
}
