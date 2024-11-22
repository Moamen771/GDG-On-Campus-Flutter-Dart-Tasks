// Student Record Management System

// 1) Create a class named "Student" with attributes name (String) , age (int) , grade (double) , contactDetails (String)
//    and a constructor to initialize these attributes using named parameter

//    * Implement a void function to update degree & contactDetails : this function takes two parameters (newGrade & newContactDetails)
//      and assign these values to the grade and contactDetails (attributes).
//    * Implement a void function to just display the values of the attributes.

// 2) Make a list called studentRecord of the type Student.

// 3) Implement a function to add a new student to the system

//    * take input for name, age, grade, and contactDetails.
//    * make an object and pass these variables to the class by the constructor.
//    * add this object to the list using (add) function.

// 4) Implement a function to update a student's information (change their grade or contact details).

//    * the function must take the name of the user as an input and search in the list about that user.
//    * if the name exists , you can take input for grade & contactDetails and call update function
//      you have done in the class to update these value.

// 5) Implement a function to search for a student by their name and display their information if found.

//    * the function must take the name of the user as an input and search in the list about the user.
//    * if the name exists , call the display function you have done in the class to display all user information.

// 6) Use a loop to display a menu with options for the user to perform different operations
//    (add a student, update student information , search for a student, exit the system).

//    * make while loop with a condition (true) , and take an input from the user as a choice

//      1. Add a student
//      2. Update student information
//      3. Search for a student
//      4. Display all students
//      5. Exit

//    use switch case to perform this

// * Best of Luck *

import 'dart:io';

void main() {
  List<Student> studentRecord = [];
  while (true) {
    print('Enter 1 to "Add a student"');
    print('Enter 2 to "Update student information"');
    print('enter 3 to "Search for a student"');
    print('enter 4 to  "Exit"');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        addStudent(studentRecord);
      case 2:
        updateStudentInfo(studentRecord);
      case 3:
        searchStudent(studentRecord);
      case 4:
        exit(0);
      default:
        print("Invalid input");
    }
  }
}

class Student {
  final String name;
  final int age;
  late double grade;
  late String phone;

  Student(
      {required this.name,
      required this.age,
      required this.grade,
      required this.phone});

  void updateDegreeAndPhone({required double grade, required String Phone}) {
    this.grade = grade;
    this.phone = Phone;
  }

  void displayStudent() {
    print(
        "Student name : $name\nStudent age : $age\nStuden grade : $grade\nStudent contact details : $phone");
  }
}

void addStudent(List studentlist) {
  print("Please,enter student name :");
  String name = stdin.readLineSync()!;
  print("Please,enter student age :");
  int age = int.parse(stdin.readLineSync()!);
  print("Please,enter student grade :");
  double grade = double.parse(stdin.readLineSync()!);
  print("Please,enter student phone :");
  String phone = stdin.readLineSync()!;
  Student student = Student(name: name, age: age, grade: grade, phone: phone);
  studentlist.add(student);
  print("Student added successfully!");
}

void updateStudentInfo(List studentlist) {
  bool isfound = false;
  print("Enter student name");
  String studentName = stdin.readLineSync()!;
  for (Student student in studentlist) {
    if (studentName.toLowerCase() == student.name.toLowerCase()) {
      isfound = true;
      print("Found!\nPlease,enter the new grade");
      double newgrade = double.parse(stdin.readLineSync()!);
      print("Please,enter the new Phone number");
      String newphone = stdin.readLineSync()!;
      student.updateDegreeAndPhone(Phone: newphone, grade: newgrade);
      print("Student updated successfully");
    }
  }
  if (isfound == false) {
    print("This student is not found");
  }
}

void searchStudent(List studentlist) {
  bool isfound = false;
  print("Enter student name");
  String studentName = stdin.readLineSync()!;
  for (Student student in studentlist) {
    if (studentName.toLowerCase() == student.name.toLowerCase()) {
      print("Found!");
      isfound = true;
      student.displayStudent();
    }
  }
  if (isfound == false) {
    print("This student is not found");
  }
}
