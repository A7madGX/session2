class TaskItemEntity {
  final String taskTitle;
  final List<String> todos;
  final int progressPercentage;

  TaskItemEntity({
    required this.taskTitle,
    required this.todos,
    required this.progressPercentage,
  });

  static List<TaskItemEntity> getTaskDummies() => [
        TaskItemEntity(
            taskTitle: 'Study for finals',
            todos: ['Review finals', 'Take courses', 'Manage time'],
            progressPercentage: 25),
        TaskItemEntity(
            taskTitle: 'Clean the kitchen', todos: ['Review finals'], progressPercentage: 50),
        TaskItemEntity(
            taskTitle: 'Business tasks',
            todos: ['Take courses', 'Take courses', 'Take courses', 'Take courses'],
            progressPercentage: 82),
        TaskItemEntity(
            taskTitle: 'Study courses',
            todos: ['Manage time', 'Manage time', 'Manage time', 'Manage time', 'Manage time'],
            progressPercentage: 63),
        TaskItemEntity(
            taskTitle: 'Study for finals',
            todos: ['Review finals', 'Take courses', 'Manage time'],
            progressPercentage: 25),
        TaskItemEntity(
            taskTitle: 'Clean the kitchen', todos: ['Review finals'], progressPercentage: 50),
        TaskItemEntity(
            taskTitle: 'Business tasks',
            todos: ['Take courses', 'Take courses', 'Take courses', 'Take courses'],
            progressPercentage: 82),
        TaskItemEntity(
            taskTitle: 'Study courses',
            todos: ['Manage time', 'Manage time', 'Manage time', 'Manage time', 'Manage time'],
            progressPercentage: 63),
        TaskItemEntity(
            taskTitle: 'Study for finals',
            todos: ['Review finals', 'Take courses', 'Manage time'],
            progressPercentage: 25),
        TaskItemEntity(
            taskTitle: 'Clean the kitchen', todos: ['Review finals'], progressPercentage: 50),
        TaskItemEntity(
            taskTitle: 'Business tasks',
            todos: ['Take courses', 'Take courses', 'Take courses', 'Take courses'],
            progressPercentage: 82),
        TaskItemEntity(
            taskTitle: 'Study courses',
            todos: ['Manage time', 'Manage time', 'Manage time', 'Manage time', 'Manage time'],
            progressPercentage: 63),
      ];
}
