import 'package:flutter/material.dart';
import 'package:todo_flutter/Pages/addTask.dart';
import 'package:todo_flutter/Widgets/Task.dart';

class TaskPage extends StatefulWidget {
  TaskPage({ Key? key }) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  void deleteTask( Task remove ){
    print("In delete task");
    setState(() {
      taskList.remove(remove);
    });
    print(taskList);
  }

  void onCheck (checkThis) {
    print(taskList[taskList.indexOf(checkThis)].done);
    setState(() {
      taskList[taskList.indexOf(checkThis)].done = !taskList[taskList.indexOf(checkThis)].done;
    });
    print(taskList[taskList.indexOf(checkThis)].done);
  }

  late List<Task> taskList = [
    Task(title: "Task1", desc: "Task 1 desc", onDelete: deleteTask, done: false, onCheck: onCheck,),
    Task(title: "Task1", desc: "Task 1 desc", onDelete: deleteTask, done: false, onCheck: onCheck,),
    Task(title: "Task1", desc: "Task 1 desc", onDelete: deleteTask, done: false, onCheck: onCheck,),
    Task(title: "Task1", desc: "Task 1 desc", onDelete: deleteTask, done: false, onCheck: onCheck,),
    Task(title: "Task1", desc: "Task 1 desc", onDelete: deleteTask, done: false, onCheck: onCheck,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[850],

      body: SafeArea(

        child: Column(
          children: [

            Center(
              child: Text(
                "ToDo List",
                style: TextStyle(color: Colors.deepPurple[300], fontWeight: FontWeight.bold),
                textScaleFactor: 3.5,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return taskList[index];
                  },
                  itemCount: taskList.length,
                ),
              ),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[600],
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTask())
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

    );
  }
}