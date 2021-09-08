import 'package:flutter/cupertino.dart';

import 'Task.dart';

class TaskData extends ChangeNotifier{
  late List<Task> taskList = [
    Task(title: "Sample task 1", desc: "Sample Task 1 desc"),
    Task(title: "Sample task 2", desc: "Sample Task 2 desc"),
  ];

  void checkThis (Task task){
    print("Reached check this");
    task.toggleDone();
    notifyListeners();
  }

  void addTask(String title, String desc){
    taskList.add( Task(title: title, desc: desc) );
    notifyListeners();
  }

  void deleteTask(Task task){
    taskList.remove(task);
    notifyListeners();
  }

}