class Student {
  String firstName = "";
  String lastName = "";
  double gpa = 0;

  Student(this.firstName, this.lastName, this.gpa);

  @override
  String toString() {
    return "$firstName $lastName - $gpa";
  }
}
