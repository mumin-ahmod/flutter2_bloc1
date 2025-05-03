part of 'counter_bloc.dart'; //link to bloc file

// States represent different states of our counter
class CounterState {
  final int counterValue; //define counter value state

  const CounterState({required this.counterValue});  //constructor
}