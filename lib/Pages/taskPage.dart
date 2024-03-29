import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_flutter/Pages/addTask.dart';
import 'package:todo_flutter/Widgets/TaskTile.dart';
import 'package:todo_flutter/models/Task.dart';
import 'package:todo_flutter/models/TaskData.dart';

class TaskPage extends StatefulWidget {
  TaskPage({ Key? key }) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

    @override
  void initState() { 
    super.initState();
    loadData();
  }

  void loadData() async{
    print("Loading data");
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? data = prefs.getStringList('todo-data');

    Provider.of<TaskData>(context, listen: false).taskList = data!.map((e) => Task.fromMap(jsonDecode(e))).toList();

    Provider.of<TaskData>(context, listen: false).onLoadNotify();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[850],

      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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

            Text(
              Provider.of<TaskData>(context).taskList.length.toString() + " Pending",
              style: TextStyle(
                color: Colors.deepPurple[300],
                fontWeight: FontWeight.w800
              ),
              textScaleFactor: 1.5,
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return TaskTile(
                      title: Provider.of<TaskData>(context).taskList[index].title,
                      desc: Provider.of<TaskData>(context).taskList[index].desc,
                      done: Provider.of<TaskData>(context).taskList[index].done,

                      onCheck: () => Provider.of<TaskData>(context, listen: false).checkThis(Provider.of<TaskData>(context, listen: false).taskList[index]),
                      onDelete: () => Provider.of<TaskData>(context, listen: false).deleteTask(Provider.of<TaskData>(context, listen: false).taskList[index]),
                    );
                  },
                  itemCount: Provider.of<TaskData>(context).taskList.length,
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