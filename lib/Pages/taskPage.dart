import 'package:flutter/material.dart';
import 'package:todo_flutter/Widgets/Task.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(
                  "ToDo List",
                  style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  textScaleFactor: 3.5,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ListView(
                    children:[
                      Task(title: "Task1"),
                      Task(title: "Task1"),
                      Task(title: "Task1"),
                      Task(title: "Task1"),
                      Task(title: "Task1"),
                    ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}