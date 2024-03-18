//work with classes and objects in opp
class Instructor {
  String name;
  String phone;
  bool isMarried;
  int age;

  // Constructor - parametric constructor parameters
  Instructor(this.name, this.phone, this.isMarried, this.age);

  // Method/function
  void displayInfo() {
    print("Name: $name");
    print("Phone: $phone");
    print("Is Married: ${isMarried ? 'Married' : 'Single'}");
    print("Age: $age");
  }
}

void main() {
  var instructor = Instructor('Allan', '0797790312', true, 76);
  instructor.displayInfo();
}
