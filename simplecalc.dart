import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to my calculator");
  double? result;

  while (true) {
    stdout.write("Enter a number: ");
    var input = stdin.readLineSync();
    if (input == null) {
      print("Invalid input. Please enter a valid number.");
      continue;
    }

    var number = double.tryParse(input);
    if (number == null) {
      print("Invalid input. Please enter a valid number.");
      continue;
    }

    if (result == null) {
      result = number;
    } else {
      result = performOperation(result, number);
    }

    stdout.write("Enter an operation (+, -, *, /, sqrt) or 'exit' to quit: ");
    var operation = stdin.readLineSync();

    if (operation == 'exit') {
      print("Exiting calculator.");
      break;
    } else {
      if (operation == null) {
        print("Invalid operation. Please try again.");
        continue;
      }
      result = performOperationWithInput(result, operation);
      print("Result: $result");
    }
  }
}

double performOperation(double num1, double num2) {
  return num1 + num2;
}

double performOperationWithInput(double num1, String operation) {
  switch (operation) {
    case '+':
      stdout.write("Enter a number: ");
      var input = stdin.readLineSync();
      var num2 = double.parse(input!);
      return num1 + num2;
    case '-':
      stdout.write("Enter a number: ");
      var input = stdin.readLineSync();
      var num2 = double.parse(input!);
      return num1 - num2;
    case '*':
      stdout.write("Enter a number: ");
      var input = stdin.readLineSync();
      var num2 = double.parse(input!);
      return num1 * num2;
    case '/':
      stdout.write("Enter a number: ");
      var input = stdin.readLineSync();
      var num2 = double.parse(input!);
      if (num2 != 0) {
        return num1 / num2;
      } else {
        print("Error: Division by zero.");
        return num1;
      }
    case 'sqrt':
      return sqrt(num1);
    default:
      print("Invalid operation. Returning current result.");
      return num1;
  }
}
