// Main Function:

//   * Create an empty list called tasks to store the user's tasks.
//   * then make a while loop ( because the app continues running until the user chooses to exit the application )
//   * Inside the while loop, the code prints four statements ( the main menu of the application )

//          enter 1 to "Add Task",

//          enter 2 to "Remove Task",

//          enter 3 to "View Tasks",

//          enter 4 to  "Exit".

//      and then take the input from the user and perform the function depends on user input.

//    * make switch statement to handle the different user choices.

// Add Task Function:

//    * If the user chooses option "1" (Add Task), the addTask() function is called.
//    * take the input from the user and add it to the list using add function in lists.

// Remove Task Function:

//    * If the user chooses option "2" (Remove Task), the removeTask() function is called.

//    * The removeTask() function first checks if the tasks list is empty. If it is,
//      it prints a message indicating that there are no tasks to remove.

//    * If the tasks list is not empty, the function asks the user to enter the task number to be removed.

//    * If the task number is valid (between 1 and the number of tasks), the task is removed from the tasks list
//      using removeAt function in lists, and a success message is printed. If the task number is invalid, an error message is printed.

// View Tasks Function:

//    * If the user chooses option "3" (View Tasks), the viewTasks() function is called.

//    * The viewTasks() function first checks if the tasks list is empty. If it is, it prints a message indicating that there are no tasks to display.

//    * If the tasks list is not empty, the function prints all the tasks in the list.

// Exit :

//    * If the user chooses option "4" (Exit), terminating the program.

import 'dart:io';

void main() {
  List<String> taskList = [];
  while (true) {
    print('Enter 1 to "Add Task"');
    print('Enter 2 to "Remove Task"');
    print('enter 3 to "View Tasks"');
    print('enter 4 to  "Exit"');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        addTask(list: taskList);
      case 2:
        removeTask(list: taskList);
      case 3:
        displayTasks(taskList);
      case 4:
        exit(0);
      default:
        print("Invalid input");
    }
  }
}

void addTask({required List list}) {
  print("Enter the Task");
  String task = stdin.readLineSync()!;
  list.add(task);
  print("Added successfully");
}

void removeTask({required List list}) {
  if (list.isEmpty) {
    print("there are no tasks to remove.");
  } else {
    print("Enter the task number to remove");
    int index = int.parse(stdin.readLineSync()!);
    if (index < list.length) {
      list.removeAt(index - 1);
      print("The task removed successfully");
    } else {
      print("Inavlid input");
    }
  }
}

void displayTasks(List list) {
  if (list.isEmpty) {
    print("there are no tasks to display.");
  } else {
    for (int i = 0; i < list.length; i++) {
      print("Task ${i + 1} : ${list[i]}");
    }
  }
}
