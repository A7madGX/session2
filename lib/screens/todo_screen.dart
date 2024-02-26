import 'package:flutter/material.dart';
import 'package:gdsc_session2/providers/task_provider.dart';
import 'package:gdsc_session2/widgets/app_bar.dart';
import 'package:pie_menu/pie_menu.dart';
import 'package:provider/provider.dart';

import '../widgets/pinned_task.dart';
import '../widgets/task_with_button_title.dart';
import '../widgets/tasks_list.dart';
import '../widgets/title.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return PieCanvas(
      child: Scaffold(
        appBar: const GAppBar(),
        body: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Theme.of(context)
                    .scaffoldBackgroundColor
                    .withOpacity(context.watch<TaskProvider>().opacity),
              ],
              stops: const [0.7, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const GTitle(),
              PinnedTask(
                pinnedTask: context.watch<TaskProvider>().pinnedTask,
              ),
              const TaskRowTitle(),
              const TasksList(),
            ],
          ),
        ),
      ),
    );
  }
}
