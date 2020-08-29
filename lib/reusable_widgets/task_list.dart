import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toodeyfluuter/model/task_Data.dart';
import 'package:toodeyfluuter/reusable_widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, TaskData taskData, Widget child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.getTasks[index];
            return GestureDetector(
              onLongPress: () {
                taskData.deleteTask(task);
              },
              child: TaskTile(
                name: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (bool value) {
                  taskData.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskData.getTasksLength,
        );
      },
    );
  }
}
