import 'package:flutter/foundation.dart';
import '../models/counter.dart';

// CounterProvider es una clase que gestiona el estado del contador.
// Extiende de ChangeNotifier para poder notificar a los widgets que
// dependen de este estado cuando hay cambios.
class CounterProvider with ChangeNotifier {

  // Instancia privada del modelo Counter
  final Counter _counter = Counter();

  // Getter para obtener el valor actual del contador
  int get count => _counter.value;

  // Método para incrementar el contador.
  // Después de modificar el valor, notifica a todos los listeners
  // para que se actualicen usando notifyListeners()
  void increment() {
    _counter.value++;
    notifyListeners();
  }
}
