import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({ Key? key, required this.title, required this.desc, required this.onDelete }) : super(key: key);
  
  final String title;
  final String desc;
  final Function onDelete;

  void DeleteThis(){
    onDelete( this );
  }

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {

  bool done = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple[600],

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),

      child: ListTile(

        leading: done ? Icon(Icons.done, color: Colors.green[700],size: 35,)  : Icon(CupertinoIcons.clock_fill, color: Colors.orange[600],),
        
        title: InkWell(
          onTap: (){
            print("clicked");
            if(done){
              setState(() {
                done = false;
              });
            }
            else{
              setState(() {
                done = true;
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

        subtitle: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(
            widget.desc,
            style: TextStyle(color: Colors.white),
            textScaleFactor: 1.3,
          ),
        ),

        trailing: GestureDetector(
          onTap: () {
            widget.DeleteThis();
          },

          child: Icon(Icons.delete, color: Colors.red, size: 25,)
        ),
      )
    );
  }
}