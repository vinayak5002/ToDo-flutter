import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.title, required this.desc, required this.onDelete, required this.done, required this.onCheck });
  
  final String title;
  final String desc;
  final Function onDelete;
  final Function onCheck;
  late bool done;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[600],

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),

      child: ListTile(

        leading: GestureDetector(
          onTap: (){
            onCheck();
          },
          child: done ? Icon(CupertinoIcons.check_mark_circled, color: Colors.green,size: 35,)  : Icon(CupertinoIcons.clock_fill, color: Colors.orange[600], size: 30,),
        ),
        
        title: Text(
          "${title}",
          textScaleFactor: 1.4,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(
            desc,
            style: TextStyle(color: Colors.white),
            textScaleFactor: 1.3,
          ),
        ),

        trailing: GestureDetector(
          onTap: () {
            onDelete();
          },
          child: Icon(Icons.delete, color: Colors.red, size: 30,)
        ),
      )
    );
  }
}