import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<IncrementEvent>(_onIncrementEvent);
    on<DecrementEvent>(_onDecrementEvent);
    on<RandomEvent>(_onRandomEvent);
    on<ClearEvent>(_onClearEvent);
  }

  void _onIncrementEvent(IncrementEvent event, Emitter emit) {
    emit(IncrementState(counter: state.counter + 1));
  }

  void _onDecrementEvent(DecrementEvent event, Emitter emit) {
    emit(DecrementState(counter: state.counter - 1));
  }

  void _onRandomEvent(RandomEvent event, Emitter emit) {
    emit(RandomState(counter: Random().nextInt(100)));
  }

  void _onClearEvent(ClearEvent event, Emitter emit) {
    emit(const ClearState(counter: 0));
  }
}
