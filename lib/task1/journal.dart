import 'package:ios_lab3/task1/student.dart';
import 'package:collection/collection.dart';

class Journal {
  List<Student> students = [];

  void addStudent(Student student) {
    if (isStudentExsits(student)) {
      print("Student ${student.firstName} ${student.lastName} already exists!");
      return;
    }

    students.add(student);
    print("Student ${student.firstName} ${student.lastName} added to journal");
  }

  void removeStudent(String firstName, String lastName) {
    var studentToRemove = students
        .where((e) => e.firstName == firstName && e.lastName == lastName)
        .firstOrNull;

    if (studentToRemove == null) {
      print("Student $firstName $lastName was not found");
      return;
    }

    try {
      students.remove(studentToRemove);
      print("Student $firstName $lastName removed");
    } catch (e) {
      print("Student $firstName $lastName failed to remove");
    }
  }

  bool isStudentExsits(Student student) {
    return students.any((e) =>
        e.firstName == student.firstName && e.lastName == student.lastName);
  }

  double getAverageGpa() {
    return students.map((e) => e.gpa).average;
  }

  Student? bestStudent() {
    if (students.isEmpty) {
      print("No students in journal");
      return null;
    }

    return students.reduce((a, b) => a.gpa > b.gpa ? a : b);
  }

  void printJournal() {
    var sortedStudents = students.sorted((a, b) => b.gpa.compareTo(a.gpa));
    for (var student in sortedStudents) {
      print(student);
    }
  }
}
