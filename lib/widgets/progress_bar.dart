import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final int progressPercentage;
  const ProgressBar({
    super.key,
    required this.progressPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularProgressIndicator(
          value: progressPercentage / 100,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          color: Colors.blue,
          strokeCap: StrokeCap.round,
        ),
        Text('$progressPercentage%',
            style: Theme.of(context).textTheme.bodySmall!.apply(fontWeightDelta: 2)),
      ],
    );
  }
}
