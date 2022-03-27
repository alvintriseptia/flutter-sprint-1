import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { to_amber, to_blue }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.amber);

  @override
  Stream<Color> mapEventToState(ColorEvent colorEvent) async* {
    switch (colorEvent) {
      case ColorEvent.to_amber:
        yield Colors.amber;
        break;
      case ColorEvent.to_blue:
        yield Colors.blue;
        break;
    }
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    try {
      return Color(json['color'] as int);
    } catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Map<String, int> toJson(Color state) {
    // TODO: implement toJson
    try {
      return {'color': state.value};
    } catch (_) {
      throw UnimplementedError();
    }
  }
}
