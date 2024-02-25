import 'package:flutter/material.dart';

import '../entities/task_item_entity.dart';

class TaskProvider extends ChangeNotifier {
  final List<TaskItemEntity> tasks = TaskItemEntity.getTaskDummies();
  late TaskItemEntity pinnedTask = tasks.first;

  void addTask(TaskItemEntity task) {
    tasks.add(task);
    notifyListeners();
  }

  void pinTask(TaskItemEntity task) {
    pinnedTask = task;
    notifyListeners();
  }

  void removeTask(TaskItemEntity task) {
    tasks.remove(task);
    notifyListeners();
  }

  LinearGradient gradient = const LinearGradient(colors: [Colors.transparent, Colors.transparent]);
  bool handleNotification(BuildContext context, ScrollNotification notification) {
    final ScrollMetrics metrics = notification.metrics;
    if (metrics.extentAfter != 0.0) {
      // There is content after. Shadow on bottom.
      gradient = LinearGradient(
        colors: [
          Colors.transparent,
          Theme.of(context).scaffoldBackgroundColor,
        ],
        stops: const [0.8, 1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
    } else {
      gradient = const LinearGradient(colors: [Colors.transparent, Colors.transparent]);
    }
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      notifyListeners();
    });
    return false;
  }
}
