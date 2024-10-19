import 'dart:io';

class TaskItem {
  String taskTitle;
  String taskDescription;

  TaskItem(this.taskTitle, this.taskDescription);
}

class TaskManager {
  List<TaskItem> taskList = [];

  void addNewTask(String taskTitle, String taskDescription) {
    taskList.add(TaskItem(taskTitle, taskDescription));
    print('Task added successfully!');
  }

  void deleteTask(int index) {
    if (index >= 0 && index < taskList.length) {
      taskList.removeAt(index);
      print('Task removed successfully!');
    } else {
      print('Invalid task number. Please try again.');
    }
  }

  void displayTasks() {
    if (taskList.isEmpty) {
      print('No tasks to display.');
    } else {
      for (int i = 0; i < taskList.length; i++) {
        print('TASK TITLE: ${taskList[i].taskTitle}');
        print('TASK DESCRIPTION: ${taskList[i].taskDescription}');
        print('----------------------------------');
      }
    }
  }

  void searchTasks(String searchTerm) {
    List<TaskItem> foundTasks =
        taskList.where((item) => item.taskTitle.contains(searchTerm)).toList();
    if (foundTasks.isEmpty) {
      print('No tasks found with the given search term.');
    } else {
      for (var item in foundTasks) {
        print('TASK TITLE: ${item.taskTitle}');
        print('TASK DESCRIPTION: ${item.taskDescription}');
        print('----------------------------------');
      }
    }
  }
}

void main() {
  TaskManager manager = TaskManager();

  while (true) {
    print('===========================================================');
    print('Welcome to Task Management System');
    print('1. Add a New Task');
    print('2. Delete a Task');
    print('3. Show All Tasks');
    print('4. Search Tasks by Title');
    print('===========================================================');
    stdout.write('Please choose an option: ');

    String? userOption = stdin.readLineSync();

    if (userOption == '1') {
      stdout.write('Please enter the task title: ');
      String titleInput = stdin.readLineSync()!;
      stdout.write('Please enter the task description: ');
      String descriptionInput = stdin.readLineSync()!;
      manager.addNewTask(titleInput, descriptionInput);
    } else if (userOption == '2') {
      manager.displayTasks();
      stdout.write('Enter the number of the task you want to delete: ');
      int taskIndex = int.parse(stdin.readLineSync()!) - 1;
      manager.deleteTask(taskIndex);
    } else if (userOption == '3') {
      manager.displayTasks();
    } else if (userOption == '4') {
      stdout.write('Enter a keyword to search for in the task titles: ');
      String searchKeyword = stdin.readLineSync()!;
      manager.searchTasks(searchKeyword);
    } else if (userOption == 'q') {
      print('Thank you for using the Task Management System. Goodbye!');
      break;
    } else {
      print('Error: Please select a valid option.');
    }
  }
}
