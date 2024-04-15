class Student {
  String studentName;
  int age;
  String grade;

  Student(this.studentName, this.age, this.grade);

  void displayInfo() {
    print("Student Name: $studentName");
    print("Student Age: $age");
    print("Student Grade: $grade");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void displayInfo() {
    print("Teacher's Name: $name");
    print("Teacher's Age: $age");
    print("Subject: $subject");
  }
}

class SubjectDetails {
  String subject1;
  int duration;
  Student student;
  Teacher teacher;

  // Constructor for SubjectDetails
  SubjectDetails(this.subject1, this.duration, String studentName, int age,
      String grade, String teacherName)
      : student = Student(studentName, age, grade),
        teacher = Teacher(teacherName, age, subject1);

  void displayInfo() {
    student.displayInfo(); // Call displayInfo method from Student
    teacher.displayInfo(); // Call displayInfo method from Teacher
    print("Subject: $subject1");
    print("Duration: $duration");
  }
}

void main() {
  var subject = SubjectDetails("Math", 60, "Alice", 30, "A", "Mr. Smith");
  subject.displayInfo();
}
