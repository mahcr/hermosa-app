import 'package:hermosa_home/core/api/task/category_model.dart';
import 'package:hermosa_home/core/api/task/task_model.dart';

abstract class TaskService {
  Future<List<Task>> getTasks(String range);
  Future<List<Category>> getCategory();
}

class TaskMockService extends TaskService {
  Future<List<Task>> getTasks(String range) async {
    return <Task>[
      new Task(id: 1, name: 'Brocoli', type: 'Pricesmart'),
      new Task(id: 1, name: 'Queso', type: 'Automercado')
    ];
  }

  Future<List<Category>> getCategory() async {
    return <Category>[
      new Category(id: 1, name: 'Tareas', range: ''),
      new Category(id: 2, name: 'Compras', range: '')
    ];
  }
}
