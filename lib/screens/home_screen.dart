import 'package:flutter/material.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_increment_button.dart';
import '../widgets/todo_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(
        children: const [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have pushed the button this many times:'),
                CounterDisplay(),
              ],
            ),
          Expanded(
            child: TodoList(),
          ),
        ],
      ),
      floatingActionButton: const CounterIncrementButton(),
    );
  }
}
