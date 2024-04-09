import 'dart:io';

class Vehicle {
  String body;
  String location;
  Vehicle(this.body, this.location);
  void displayVehicleInfo() {
    print("Vehicle information: $body $location");
  }
}

class Car extends Vehicle {
  String name;
  int yearOfManufacture; // Changed to camelCase for consistency
  String make;
  String model;
  bool transmission;
  double _time;
  double _distance;

  // Constructor
  Car(String body, String location, this.name, this.yearOfManufacture,
      this.make, this.model, this.transmission, this._time, this._distance)
      : super(body, location);

  double get distance => _distance;

  set distance(double value) {
    if (value > 0) {
      _distance = value;
    } else {
      print("Stationary");
    }
  }

  double get time => _time;

  set time(double value) {
    if (value > 0) {
      _time = value;
    } else {
      print("Stationary");
    }
  }

  double calculateSpeed() {
    if (_time != 0) {
      return _distance / _time;
    } else {
      print("Start Car");
      return 0;
    }
  }

  // Instance method to display car information
  void displayInfo() {
    print("Name: $name");
    print("Year of Manufacture: $yearOfManufacture");
    print("Make: $make");
    print("Model: $model");
    print("Transmission: ${transmission ? "Manual" : "Automatic"}");
  }

  void start() => print(make);
  void stop() => print(name);
}

void main() {
  var car = Car(
      "Saloon Car", "Nairobi", "Nerea", 2005, "Chevrolet", "Optra", true, 0, 0
      // Assuming true for manual transmission based on your previous logic
      );
  Car myCar = car;

  // Printing car information using the displayInfo() method
  myCar.displayInfo();
  myCar.displayVehicleInfo();
  myCar.start();
  myCar.stop();
  myCar.time = 1.5;
  myCar.distance = 150.0;
  print("Speed: ${myCar.calculateSpeed()}");
}
