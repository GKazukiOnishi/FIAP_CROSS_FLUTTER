part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class IncrementEvent extends CounterEvent {
  const IncrementEvent(); //Construtor do evento, usado para passar informações, mas aqui trabalharemos com o dado global
}

class DecrementEvent extends CounterEvent {
  const DecrementEvent(); //Construtor do evento, usado para passar informações, mas aqui trabalharemos com o dado global
}

class RandomEvent extends CounterEvent {
  const RandomEvent();
}

class ClearEvent extends CounterEvent {
  const ClearEvent();
}
