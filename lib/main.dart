import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Pages/taskPage.dart';
import 'models/TaskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskPage()
      ),
    );
  }
}
