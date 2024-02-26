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

  ScrollController scrollController = ScrollController();
  double opacity = 1;
  void changeOpacity(double value) {
    opacity = 1 - value / scrollController.position.maxScrollExtent;
    notifyListeners();
  }
}
