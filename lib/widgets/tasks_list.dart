import 'package:flutter/material.dart';
import 'package:gdsc_session2/entities/task_item_entity.dart';
import 'package:gdsc_session2/widgets/task_item.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<TaskItemEntity> tasks = TaskItemEntity.getTaskDummies();
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var task in tasks) ...[
              TaskItem(task: task),
              const SizedBox(
                height: 10,
              )
            ]
          ],
        ),
      ),
    );
  }
}
