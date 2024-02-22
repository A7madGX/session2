import 'package:flutter/material.dart';
import 'package:gdsc_session2/widgets/app_bar.dart';

import '../widgets/pinned_task.dart';
import '../widgets/task_with_button_title.dart';
import '../widgets/tasks_list.dart';
import '../widgets/title.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Theme.of(context).scaffoldBackgroundColor,
            ],
            stops: const [0.8, 1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Column(
          children: [
            GTitle(),
            PinnedTask(),
            TaskRowTitle(),
            TasksList(),
          ],
        ),
      ),
    );
  }
}
