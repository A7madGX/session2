import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdsc_session2/constants/image_strings.dart';
import 'package:gdsc_session2/entities/task_item_entity.dart';
import 'package:gdsc_session2/providers/task_provider.dart';
import 'package:gdsc_session2/widgets/progress_bar.dart';
import 'package:pie_menu/pie_menu.dart';
import 'package:provider/provider.dart';

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
                Text('${task.todos.length} Tasks', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          ProgressBar(
            progressPercentage: task.progressPercentage,
          ),
          const SizedBox(
            width: 10,
          ),
          PieMenu(
            theme: const PieTheme(
              brightness: Brightness.dark,
            ),
            actions: [
              PieAction(
                tooltip: const Text('Pinned'),
                onSelect: () {
                  context.read<TaskProvider>().pinTask(task);
                },
                child: SvgPicture.asset(
                  GImageStrings.pin,
                  color: Colors.white,
                ),
              ),
              PieAction(
                tooltip: const Text('Deleted'),
                onSelect: () {
                  context.read<TaskProvider>().removeTask(task);
                },
                child: const Icon(Icons.clear),
              ),
            ],
            child: const Icon(Icons.more_vert_rounded),
          )
        ],
      ),
    );
  }
}
