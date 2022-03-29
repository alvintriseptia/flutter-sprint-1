import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterEvent>((event, emit) {
      // TODO: implement event handler
      if (event is Increment) {
        emit(CounterState(state.count + 1));
      } else if (event is Decrement) {
        emit(CounterState(state.count - 1));
      }
    });
  }
}
