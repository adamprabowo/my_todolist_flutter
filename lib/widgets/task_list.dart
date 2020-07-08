import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './task_tile.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData .tasks[index].isDone,
                checkboxCallback: (bool checkboxState) {
//              setState(() {
//                widget.tasks[index].toggleDone();
//              });
                });
          },
          itemCount: taskData.taskCount,
        );
      }

    );
  }
}
