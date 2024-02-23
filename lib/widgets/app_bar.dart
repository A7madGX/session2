import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/image_strings.dart';

class GAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 5,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SvgPicture.asset(
          GImageStrings.logo,
        ),
      ),
      title: const Text(
        'ToDo',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white38,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(GImageStrings.setting),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
