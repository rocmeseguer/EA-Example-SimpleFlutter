import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_increment_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter Example'),
      ),
      body: const Center(
        child: CounterDisplay(),
      ),
      floatingActionButton: const CounterIncrementButton(),
    );
  }
}
