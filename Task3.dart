import 'dart:io';

void main() {
  print("Enter a number : ");
  double number1 = double.parse(stdin.readLineSync()!);
  print("Enter a number : ");
  double number2 = double.parse(stdin.readLineSync()!);
  print("Enter:\n1- Add\n2-Minus\n3-Multiply\n4-Sub");
  double operation = double.parse(stdin.readLineSync()!);
  double? result;
  switch (operation) {
    case 1:
      result = number1 + number2;
    case 2:
      result = number1 - number2;
    case 3:
      result = number1 * number2;
    case 4:
      result = number1 / number2;
    default:
      print("Invalid input");
  }
  print("The result is $result");
}
