import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentValue = state.count;
      final incrementedValue = currentValue + 1;
      return emit(CounterState(count: incrementedValue));
    });
    on<Decrement>((event, emit) {
      final currentValue = state.count;
      final decrementedValue = currentValue - 1;

      return emit(CounterState(count: decrementedValue));
    });
  }
}
