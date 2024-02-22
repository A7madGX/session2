import 'package:flutter/material.dart';
import 'package:gdsc_session2/entities/task_item_entity.dart';
import 'package:gdsc_session2/widgets/progress_bar.dart';

class TaskItem extends StatelessWidget {
  final TaskItemEntity task;
  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white.withOpacity(0.1),
      ),
      padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.taskTitle,
                  style: Theme.of(context).textTheme.titleMedium!.apply(fontWeightDelta: 4),
                ),
                Text('${task.numberOfTasks} Tasks', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          ProgressBar(
            progressPercentage: task.progressPercentage,
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: const Icon(Icons.more_vert_rounded),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
