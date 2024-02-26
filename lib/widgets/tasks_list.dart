import 'package:flutter/material.dart';
import 'package:gdsc_session2/providers/task_provider.dart';
import 'package:gdsc_session2/widgets/task_item.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = context.read<TaskProvider>().scrollController;
    scrollController.addListener(() {
      var value = scrollController.position.pixels;
      context.read<TaskProvider>().changeOpacity(value);
    });
    return Expanded(
      flex: 1,
      child: Consumer<TaskProvider>(builder: (context, taskController, _) {
        return SingleChildScrollView(
          controller: scrollController,
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
        );
      }),
    );
  }
}
