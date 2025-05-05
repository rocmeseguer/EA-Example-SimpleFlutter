import 'package:flutter/foundation.dart';
import '../models/todo.dart';
import '../services/todo_service.dart';

/// Provides a way to manage and notify listeners about changes to a list of todos.
///
/// This class extends [ChangeNotifier] which means it can notify its listeners
/// when the todos data changes.
class TodoProvider with ChangeNotifier {
  /// Service to handle API calls for todos
  final TodoService _todoService = TodoService();

  /// Internal, private state of the todos
  List<Todo> _todos = [];

  /// Loading state flag
  bool _isLoading = false;

  /// Error message if something goes wrong
  String? _error;

  /// Exposes the current todos list to widgets
  List<Todo> get todos => _todos;

  /// Exposes the loading state to widgets
  bool get isLoading => _isLoading;

  /// Exposes any error message to widgets
  String? get error => _error;

  /// Constructor that automatically loads todos when provider is created
  TodoProvider() {
    loadTodos();
  }

  /// Loads todos from the API.
  ///
  /// Sets loading state while fetching and handles any errors that occur.
  /// Notifies listeners after the operation is complete.
  Future<void> loadTodos() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _todos = await _todoService.getTodos();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Toggles the completed status of a todo with the given id.
  ///
  /// Finds the todo by [id] and inverts its completed status.
  /// Notifies listeners if the todo was found and updated.
  void toggleTodo(int id) {
    final todoIndex = _todos.indexWhere((todo) => todo.id == id);
    if (todoIndex >= 0) {
      _todos[todoIndex].completed = !_todos[todoIndex].completed;
      notifyListeners();
    }
  }
}
