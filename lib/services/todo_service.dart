import 'package:dio/dio.dart';
import '../models/todo.dart';

/// Service class responsible for handling all API calls related to todos.
///
/// Uses [Dio] HTTP client to make network requests to the JSONPlaceholder API.
class TodoService {
  /// Instance of Dio HTTP client used for making API requests
  final Dio _dio = Dio();

  /// Base URL of the JSONPlaceholder API
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  /// Fetches all todos from the API.
  ///
  /// Makes a GET request to the todos endpoint and converts the JSON response
  /// into a list of [Todo] objects.
  ///
  /// Returns a [Future] that completes with a [List<Todo>].
  ///
  /// Throws an [Exception] if the API call fails or if the data cannot be parsed.
  Future<List<Todo>> getTodos() async {
    try {
      final response = await _dio.get('$_baseUrl/todos');
      final List<dynamic> data = response.data;
      return data.map((json) => Todo.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load todos: $e');
    }
  }
}
