import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdsc_session2/constants/image_strings.dart';
import 'package:gdsc_session2/entities/task_item_entity.dart';
import 'package:gdsc_session2/providers/task_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/text_field.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final List<TextEditingController> controllers = [TextEditingController()];
  final TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TaskProvider>().addTask(
                TaskItemEntity(
                  taskTitle: titleController.text,
                  todos: [for (var ctrl in controllers) ctrl.text],
                  progressPercentage: 0,
                ),
              );
          Navigator.of(context).pop();
        },
        backgroundColor: Colors.blue.withOpacity(0.2),
        shape: const CircleBorder(),
        child: const Icon(Icons.check),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const Text('Create Task'),
        titleTextStyle: const TextStyle().copyWith(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(0.4),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: Theme.of(context).textTheme.titleLarge!.apply(fontWeightDelta: 2),
            ),
            const SizedBox(
              height: 15,
            ),
            GTextField(
              hintText: 'Task title',
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SvgPicture.asset(
                  GImageStrings.title,
                  width: 25,
                ),
              ),
              controller: titleController,
            ),
            Divider(
              thickness: 3,
              height: 40,
              color: Colors.white.withOpacity(0.5),
            ),
            Text(
              'ToDos',
              style: Theme.of(context).textTheme.titleLarge!.apply(fontWeightDelta: 2),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var ctrl in controllers) ...[
                      GTextField(
                        hintText: 'Todo ${controllers.indexOf(ctrl) + 1}',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SvgPicture.asset(
                            GImageStrings.clipboard,
                            width: 25,
                          ),
                        ),
                        suffixIcon: controllers.indexOf(ctrl) == 0
                            ? null
                            : IconButton(
                                onPressed: () {
                                  setState(() {});
                                  removeTextField(controllers.indexOf(ctrl));
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.red,
                                )),
                        controller: ctrl,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.withOpacity(0.2),
                            ),
                            onPressed: () {
                              setState(() {
                                addTextField();
                              });
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.add_circle),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Add',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void addTextField() {
    controllers.add(TextEditingController());
  }

  void removeTextField(int index) {
    controllers.removeAt(index);
  }
}
