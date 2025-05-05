/// Representa un elemento de tarea (todo) en la aplicación.
class Todo {
  final int id;
  final String title;
  bool completed;
  final int userId;

  /// Constructor que requiere todos los campos necesarios para crear un Todo.
  Todo({
    required this.id,
    required this.title,
    required this.completed,
    required this.userId,
  });

  /// Factory constructor que crea una instancia de Todo desde un Map<String, dynamic>.
  /// Este método se usa para convertir los datos JSON de la API en un objeto Todo.
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
      userId: json['userId'],
    );
  }
}
