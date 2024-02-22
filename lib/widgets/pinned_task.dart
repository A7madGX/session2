import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdsc_session2/widgets/text_item.dart';

import '../constants/image_strings.dart';

class PinnedTask extends StatelessWidget {
  const PinnedTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Study for finals.',
                style: Theme.of(context).textTheme.titleLarge!.apply(
                      fontWeightDelta: 1,
                      fontSizeDelta: 2,
                      color: Colors.white,
                    ),
              ),
              SvgPicture.asset(GImageStrings.pin),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.white.withOpacity(0.5),
            endIndent: 100,
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextItem(
                      text: 'Review lectures',
                      finished: true,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextItem(
                      text: 'Review personal notes',
                      finished: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextItem(
                      text: 'Solve past exams',
                      finished: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextItem(
                      text: 'Make short summaries',
                      finished: false,
                    )
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: CircularProgressIndicator(
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      color: Colors.blue,
                      value: 0.25,
                      strokeWidth: 7,
                      strokeCap: StrokeCap.round,
                    ),
                  ),
                  Text(
                    '25%',
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                          fontWeightDelta: 2,
                        ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
