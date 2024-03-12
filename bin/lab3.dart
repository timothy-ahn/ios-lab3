import 'package:ios_lab3/task1/journal.dart';
import 'package:ios_lab3/task1/student.dart';
import 'package:ios_lab3/task2/task.dart';
import 'package:ios_lab3/task2/todol-list.dart';

void main(List<String> arguments) {
  // task1();
  // task2();
}

void task1() {
  var journal = Journal();

  journal.addStudent(Student("Temirlan", "An", 3.4));
  journal.addStudent(Student("Ilyas", "Adambekov", 2.7));
  journal.addStudent(Student("Aisha", "Bolatova", 3.6));
  journal.addStudent(Student("Miras", "Ramazan", 3.0));

  journal.removeStudent("Miras", "Ramazan");
  print("");
  journal.printJournal();
  print("\nThe best student by GPA: ");
  print(journal.bestStudent()?.toString());
}

void task2() {
  var todoList = TodoList();

  todoList.addTask(Task("Room", "Clea the room"));
  todoList.addTask(Task("Dishes", "Wash the dishes"));
  todoList.addTask(Task("Landuary", "Do the landuary"));

  print("All tasks: ");
  todoList.printTasks();
  todoList.removeTasksByTitle("Room");
  todoList.toggle("Dishes");

  print("\nUpated tasks: ");
  todoList.printTasks();

  print("\nCompleted tasks: ");
  todoList.printCompletedTasks();

  print("\nOustanding tasks: ");
  todoList.printOutstandingTasks();

  todoList.removeCompleted();
  print("\nUpated tasks: ");
  todoList.printTasks();
}
