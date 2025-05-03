part of 'counter_bloc.dart';  // Links to the BLoC file

abstract class CounterEvent {}  // Base event class

class IncrementEvent extends CounterEvent {}  // +1 event
class DecrementEvent extends CounterEvent {}  // -1 event