part of 'counter_bloc.dart';

//trocar do sealed pro abstract, na versão nova usa abstract
abstract class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}

final class CounterInitial extends CounterState {
  const CounterInitial({super.counter = 0});
}

class IncrementState extends CounterState {
  const IncrementState({required super.counter});
}

class DecrementState extends CounterState {
  const DecrementState({required super.counter});
}
