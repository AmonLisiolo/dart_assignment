class animal {
  String name;
  int numberoflegs;
  int lifespan;
  //constractor
  animal(this.name, this.numberoflegs, this.lifespan);
  void displayInfo() {
    print("$name");
    print("$numberoflegs");
    print("$lifespan");
  }
}

void main() {
  var Animal = animal("Lion", 4, 10);
  Animal.displayInfo();
}
