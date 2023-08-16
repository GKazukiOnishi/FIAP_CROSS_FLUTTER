import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterState>(
      builder: (context, state) {
        return MyHomePage(
          title: 'Bloc',
          counter: state.counter,
          onIncrementPressed: () {
            context.read<CounterBloc>().add(const IncrementEvent());
          },
          onDecrementPressed: () {
            context.read<CounterBloc>().add(const DecrementEvent());
          },
        );
      },
      listener: (context, state) {
        if (state is IncrementState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Increment'),
            duration: Duration(microseconds: 100),
          ));
        }
        if (state is DecrementState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Decrement'),
            duration: Duration(microseconds: 100),
          ));
        }
      },
    );
  }
}