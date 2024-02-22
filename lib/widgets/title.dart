import 'package:flutter/material.dart';

import '../constants/image_strings.dart';

class GTitle extends StatelessWidget {
  const GTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(GImageStrings.myPic),
            radius: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Ahmed,',
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                      fontSizeDelta: 2,
                      fontWeightDelta: 2,
                      heightDelta: -0.5,
                    ),
              ),
              Text('We wish you a productive day!',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(fontWeightDelta: 1, color: Colors.white54)),
            ],
          )
        ],
      ),
    );
  }
}
