import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier{
  late List<Task> taskList = [
    Task(title: "Sample task 1", desc: "Sample Task 1 desc"),
    Task(title: "Sample task 2", desc: "Sample Task 2 desc"),
  ];

  void onLoadNotify()  {
    // print("loading data");
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    // List<String>? data = prefs.getStringList('todo-data');

    // taskList = data!.map((e) => Task.fromMap(jsonDecode(e))).toList();

    notifyListeners();

  }

  void checkThis (Task task){
    print("Reached check this");
    task.toggleDone();
    notifyListeners();
    saveData();
  }

  void addTask(String title, String desc){
    taskList.add( Task(title: title, desc: desc) );
    notifyListeners();
    saveData();
  }

  void deleteTask(Task task){
    taskList.remove(task);
    notifyListeners();
    saveData();
  }

  void saveData()async{
    print("saving data");
    List<String> saveList = taskList.map((e) => jsonEncode(e.toMap())).toList();

    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setStringList('todo-data', saveList);
    
  }

}