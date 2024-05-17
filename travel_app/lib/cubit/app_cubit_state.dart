import 'package:equatable/equatable.dart';

// Define an event
abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {}

// Define a state
abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterValue extends CounterState {
  final int value;

  const CounterValue(this.value);

  @override
  List<Object> get props => [value];
}
