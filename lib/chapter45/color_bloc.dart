import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { to_amber, to_blue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.amber);

  @override
  Stream<Color> mapEventToState(ColorEvent colorEvent) async* {
    if (colorEvent == ColorEvent.to_amber)
      yield Colors.amber;
    else
      yield Colors.blue;
  }
}
