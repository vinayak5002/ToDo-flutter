import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/TaskData.dart';

class AddTask extends StatelessWidget {
  late String title = " ";
  late String desc = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],

      body: SafeArea(

        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                "Add new task",
                style: TextStyle(
                  color: Colors.deepPurple[300],
                  fontWeight: FontWeight.bold
                ),
                textScaleFactor: 3.5,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.deepPurple[300])!),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.deepPurple[300])!),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                
                    labelText: "Tittle",
                    labelStyle: TextStyle(color: Colors.deepPurple[300]),
                
                  ),

                  style: TextStyle(color: Colors.white),

                  onChanged: (newText) {
                    title = newText;
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.deepPurple[300])!),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: (Colors.deepPurple[300])!),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                
                    labelText: "Description",
                    labelStyle: TextStyle(color: Colors.deepPurple[300]),
                
                  ),

                  style: TextStyle(color: Colors.white),

                  onChanged: (newText){
                    desc = newText;
                  },
                ),
              ),
            ),

            ElevatedButton(
              onPressed: (){
                
                if(title != " "){
                  Provider.of<TaskData>(context, listen: false).addTask(title, desc);
                  Navigator.pop(context);
                }

              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Add", textScaleFactor: 1.3,),
              ),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>((Colors.deepPurple[300])!)),
            )

          ],
        ),
      ),
    );
  }
}