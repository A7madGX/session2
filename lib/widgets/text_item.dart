import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  final String text;
  final bool finished;
  const TextItem({
    super.key,
    required this.text,
    required this.finished,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          finished ? Icons.check_circle_outline_rounded : Icons.circle_outlined,
          size: 18,
          color: finished ? Colors.green : Colors.white60,
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall!.apply(
                  fontWeightDelta: 2,
                  fontSizeDelta: 2,
                  color: finished ? Colors.green : Colors.white60,
                ),
          ),
        ),
      ],
    );
  }
}
