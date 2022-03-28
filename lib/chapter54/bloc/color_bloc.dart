import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { toPink, toAmber, toPurple }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.pink);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    switch (event) {
      case ColorEvent.toPink:
        yield Colors.pink;
        break;
      case ColorEvent.toAmber:
        yield Colors.amber;
        break;
      case ColorEvent.toPurple:
        yield Colors.purple;
        break;
    }
  }
}
