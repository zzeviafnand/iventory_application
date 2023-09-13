import 'package:flutter/material.dart';

import 'constant.dart';

class AppBarContent extends StatelessWidget implements PreferredSizeWidget {
  final double barHeight = 50;
  final String title;
  const AppBarContent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(title)),
      centerTitle: true,
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(60),
            ),
            gradient: LinearGradient(colors: [
              secondaryColor.withOpacity(0.9),
              primaryColor.withOpacity(0.9)
            ])),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(60),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + barHeight);
}
