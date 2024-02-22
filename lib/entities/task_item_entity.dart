class TaskItemEntity {
  final String taskTitle;
  final int numberOfTasks;
  final int progressPercentage;

  TaskItemEntity({
    required this.taskTitle,
    required this.numberOfTasks,
    required this.progressPercentage,
  });

  static List<TaskItemEntity> getTaskDummies() => [
        TaskItemEntity(taskTitle: 'Study for finals', numberOfTasks: 4, progressPercentage: 25),
        TaskItemEntity(taskTitle: 'Clean the kitchen', numberOfTasks: 2, progressPercentage: 50),
        TaskItemEntity(taskTitle: 'Business tasks', numberOfTasks: 17, progressPercentage: 82),
        TaskItemEntity(taskTitle: 'Study courses', numberOfTasks: 2, progressPercentage: 63),
        TaskItemEntity(taskTitle: 'Study for finals', numberOfTasks: 4, progressPercentage: 25),
        TaskItemEntity(taskTitle: 'Clean the kitchen', numberOfTasks: 2, progressPercentage: 50),
        TaskItemEntity(taskTitle: 'Business tasks', numberOfTasks: 17, progressPercentage: 82),
        TaskItemEntity(taskTitle: 'Study courses', numberOfTasks: 2, progressPercentage: 63),
      ];
}
