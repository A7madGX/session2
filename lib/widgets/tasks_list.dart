import 'package:flutter/material.dart';
import 'package:gdsc_session2/providers/task_provider.dart';
import 'package:gdsc_session2/widgets/task_item.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Consumer<TaskProvider>(builder: (context, taskController, _) {
        return NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            return context.read<TaskProvider>().handleNotification(context, notification);
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                for (var task in taskController.tasks) ...[
                  TaskItem(task: task),
                  const SizedBox(
                    height: 10,
                  )
                ]
              ],
            ),
          ),
        );
      }),
    );
  }
}
