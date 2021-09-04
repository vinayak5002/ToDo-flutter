import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({ Key? key }) : super(key: key);

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
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}