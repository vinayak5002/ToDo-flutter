import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/Widgets/TaskTile.dart';

import 'Task.dart';

class TaskData extends ChangeNotifier{
  late List<Task> taskList = [
    Task(title: "Task1", desc: "Task 1 desc"),
    Task(title: "Task1", desc: "Task 1 desc"),
    Task(title: "Task1", desc: "Task 1 desc"),
    Task(title: "Task1", desc: "Task 1 desc"),
    Task(title: "Task1", desc: "Task 1 desc"),
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