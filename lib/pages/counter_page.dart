import 'package:flutter/material.dart';
import 'package:flutter_architectures/bloc/counter_bloc.dart';
import 'package:flutter_architectures/bloc/counter_event.dart';
import 'package:flutter_architectures/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App Bloc"),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.value.toString(),
              style: const TextStyle(fontSize: 24.0),
            ),
          );
        },
      ),
      floatingActionButton: const MyFloatingActionButtons(),
    );
  }
}

class MyFloatingActionButtons extends StatelessWidget {
  const MyFloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<CounterBloc>(context).add(Increment()),
          tooltip: "Increment",
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10.0),
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<CounterBloc>(context).add(Decrement()),
          tooltip: "Decrement",
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
