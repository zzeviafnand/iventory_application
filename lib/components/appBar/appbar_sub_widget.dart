import 'package:flutter/material.dart';

import '../constant.dart';

class SubAppWidget extends StatelessWidget implements PreferredSizeWidget {
  const SubAppWidget({
    super.key,
    required this.title,
  });
  final Text title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 1,
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        null,
        0,
      ),
      centerTitle: true,
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
