import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/chapter53/bloc/user_bloc.dart';
import 'package:sprint1/chapter53/model/user.dart';
import 'package:sprint1/chapter53/ui/user_card.dart';

class MainPage extends StatelessWidget {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Chapter 53 MVVM'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                bloc.add(random.nextInt(10) + 1);
              },
              child: Text("Pick Random User"),
            ),
            BlocBuilder<UserBloc, User>(builder: (context, user) {
              return (user is UninitializedUser)
                  ? Container()
                  : UserCard(user: user);
            })
          ],
        ));
  }
}
