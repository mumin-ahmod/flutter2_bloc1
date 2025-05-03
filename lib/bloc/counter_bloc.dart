import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';


//1. extend Bloc with the Event and State
class CounterBloc extends Bloc<CounterEvent, CounterState> {

  //2. super constructor takes the original state
  CounterBloc() : super(const CounterState(counterValue: 0)) {
    //3. Define how increment event are handled
    on<IncrementEvent>((event, emit) {
      emit(CounterState(counterValue: state.counterValue + 1));
    });

    //4. define how decrement event is handled
    on<DecrementEvent>((event, emit) {
      emit(CounterState(counterValue: state.counterValue - 1));
    });

    //5. define how clear event is handled
    on<DecrementEvent>((event, emit) {
      emit(CounterState(counterValue: 0));
    });
  }
}