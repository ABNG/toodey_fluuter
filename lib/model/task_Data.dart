import 'package:flutter/foundation.dart';
import 'package:toodeyfluuter/model/task_model.dart';
import 'dart:collection';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "buy EGG"),
  ];

  UnmodifiableListView<Task> get getTasks => UnmodifiableListView(_tasks);

  get getTasksLength => _tasks.length;

  set setTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
