import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toodeyfluuter/app_screens/task_screen.dart';
import 'package:toodeyfluuter/model/task_Data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(), // _ mean context
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
