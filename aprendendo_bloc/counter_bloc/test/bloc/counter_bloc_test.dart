import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late CounterBloc bloc;

  setUp(() {
    bloc = CounterBloc();
  });

  void mockRandomFunction(int mock) {
    when(() => Random().nextInt(any())).thenAnswer(
      (_) => mock,
    );
  }

  group(
    'CounterBloc',
    () {
      blocTest<CounterBloc, CounterState>(
        'Should emit IncrementState(1), when calls IncrementEvent',
        build: () => bloc,
        act: (bloc) => bloc.add(const IncrementEvent()),
        expect: () => [
          const IncrementState(counter: 1),
        ],
      );
      blocTest<CounterBloc, CounterState>(
        'Should emit IncrementState(1), IncrementState(2), when calls 2x IncrementEvent',
        build: () => bloc,
        act: (bloc) => bloc
          ..add(const IncrementEvent())
          ..add(const IncrementEvent()),
        expect: () => [
          const IncrementState(counter: 1),
          const IncrementState(counter: 2),
        ],
      );

      blocTest<CounterBloc, CounterState>(
        'Should emit DecrementState(0), when calls DecrementEvent',
        build: () => bloc,
        act: (bloc) => bloc.add(const DecrementEvent()),
        expect: () => [
          const DecrementState(counter: -1),
        ],
      );

      blocTest<CounterBloc, CounterState>(
        'Should emit DecrementState(-1), DecrementState(-2), when calls 2x DecrementEvent',
        build: () => bloc,
        act: (bloc) => bloc
          ..add(const DecrementEvent())
          ..add(const DecrementEvent()),
        expect: () => [
          const DecrementState(counter: -1),
          const DecrementState(counter: -2),
        ],
      );

      blocTest<CounterBloc, CounterState>(
        'Should emit DecrementState(-1), IncrementState(0), when calls DecrementEvent and IncrementEvent',
        build: () => bloc,
        act: (bloc) => bloc
          ..add(const DecrementEvent())
          ..add(const IncrementEvent()),
        expect: () => [
          const DecrementState(counter: -1),
          const IncrementState(counter: 0),
        ],
      );

      blocTest<CounterBloc, CounterState>(
        'Should emit RandomState(55), when calls RandomEvent',
        build: () {
          mockRandomFunction(55);
          return bloc;
        },
        act: (bloc) => bloc.add(const RandomEvent()),
        expect: () => [
          const RandomState(counter: 55),
        ],
      );

      blocTest<CounterBloc, CounterState>(
        'Should emit ClearState(0), when calls ClearEvent',
        build: () => bloc,
        act: (bloc) => bloc.add(const ClearEvent()),
        expect: () => [
          const ClearState(counter: 0),
        ],
      );
    },
  );
}
