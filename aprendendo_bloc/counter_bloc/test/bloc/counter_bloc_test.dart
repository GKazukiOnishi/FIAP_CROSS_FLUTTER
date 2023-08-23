import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterBloc bloc;

  setUpAll(() {
    bloc = CounterBloc();
  });

  group(
    'CounterBloc',
    () {
      blocTest(
        'Should emit IncrementState(1), when calls IncrementEvent',
        build: () => bloc,
        act: (bloc) => bloc
          ..add(const IncrementEvent())
          ..add(const IncrementEvent()),
        expect: () => [
          const IncrementState(counter: 1),
          const IncrementState(counter: 2),
        ],
      );
    },
  );
}
