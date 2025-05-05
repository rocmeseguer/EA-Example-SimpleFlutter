import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoProvider = context.watch<TodoProvider>();

    if (todoProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (todoProvider.error != null) {
      return Center(child: Text('Error: ${todoProvider.error}'));
    }

    if (todoProvider.todos.isEmpty) {
      return const Center(child: Text('No todos found'));
    }

    return ListView.builder(
      itemCount: todoProvider.todos.length,
      itemBuilder: (context, index) {
        final todo = todoProvider.todos[index];
        return ListTile(
          title: Text(todo.title),
          leading: Checkbox(
            value: todo.completed,
            onChanged: (_) => todoProvider.toggleTodo(todo.id),
          ),
        );
      },
    );
  }
}
