import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class CounterIncrementButton extends StatelessWidget {
  const CounterIncrementButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<CounterProvider>().increment(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
