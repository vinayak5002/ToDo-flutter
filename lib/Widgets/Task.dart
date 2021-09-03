import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String title;
  const Task({ Key? key, required this.title }) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    bool done = false;
    bool zero = false;
    return Card(
      color: Colors.deepPurple[600],
      child: ListTile(


        leading: done ? Icon(Icons.done, color: Colors.green[700],size: 35,)  : Icon(CupertinoIcons.clock_fill, color: Colors.orange[600],),
        
        
        title: InkWell(
          onTap: (){
            print("clicked");
            if(!zero){
              setState(() {
                print("${widget.title}clicked");
                done = true;
                zero = true;
              });
            }
            else{
              print("done");
              setState((){
                done = false;
              });
            }
          },
          child: Text(
            "${widget.title}",
            textScaleFactor: 1.4,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      )
    );
  }
}