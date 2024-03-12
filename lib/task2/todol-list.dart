import 'package:collection/collection.dart';
import 'package:ios_lab3/task2/task.dart';

class TodoList {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void removeTasksByTitle(String title) {
    tasks.removeWhere((element) => element.title == title);
  }

  void toggle(String title) {
    tasks.where((element) => element.title == title).forEach((element) {
      element.toggle();
    });
  }

  void removeCompleted() {
    tasks.removeWhere((element) => element.isCompleted);
  }

  void printTasks() {
    var sortedTasks = tasks.sorted((a, b) => b.isCompleted ? 1 : -1);
    for (var task in sortedTasks) {
      print(task);
    }
  }

  void printCompletedTasks() {
    var completedTasks = tasks.where((element) => element.isCompleted);
    for (var task in completedTasks) {
      print(task);
    }
  }

  void printOutstandingTasks() {
    var outstandingTasks = tasks.where((element) => !element.isCompleted);
    for (var task in outstandingTasks) {
      print(task);
    }
  }
}
