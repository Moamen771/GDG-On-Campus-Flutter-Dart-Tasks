import 'dart:io';

void main(){
  timeCalc();
}

void timeCalc(){
  print("Enter your speed : ");
  double speed = double.parse(stdin.readLineSync()!);
  print("Enter the distance : ");
  double distance = double.parse(stdin.readLineSync()!);
  double time = distance / speed;
  print("The neaded is ${time*60}");
}