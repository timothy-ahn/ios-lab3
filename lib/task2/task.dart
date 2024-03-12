class Task {
  String title = "";
  String description = "";
  bool isCompleted = false;

  Task(this.title, this.description);

  void toggle() {
    isCompleted = !isCompleted;
  }

  @override
  String toString() {
    return "$title $description - ${isCompleted ? "completed" : "not completed"}";
  }
}
