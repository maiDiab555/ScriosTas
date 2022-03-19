part of 'counter_cubit.dart';

// ignore: must_be_immutable
class CounterState extends Equatable {
  int counterValue;
  bool wasIncrement;

  CounterState({
     required this.counterValue,
     required this.wasIncrement,
  });

  @override
  List<Object> get props => [counterValue, wasIncrement];
}
