import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final incrementValue = state.counter + 1;
      return emit(CounterState(counter: incrementValue));
    });

    on<Decrement>((event, emit) {
      final decrementValue = state.counter - 1;
      return emit(CounterState(counter: decrementValue));
    });
  }
}
