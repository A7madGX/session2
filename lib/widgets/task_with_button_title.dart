import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdsc_session2/screens/new_task.dart';

import '../constants/image_strings.dart';

class TaskRowTitle extends StatelessWidget {
  const TaskRowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Your Tasks',
            style: Theme.of(context).textTheme.titleLarge!.apply(
                  fontWeightDelta: 2,
                ),
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NewTask()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                  backgroundColor: Colors.blue.withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(GImageStrings.add),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
