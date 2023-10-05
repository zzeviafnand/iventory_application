// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class NavBarHomeWidget extends StatefulWidget {
  const NavBarHomeWidget({super.key});

  @override
  State<NavBarHomeWidget> createState() => _NavBarHomeWidgetState();
}

class _NavBarHomeWidgetState extends State<NavBarHomeWidget> {
  @override
  Widget build(BuildContext context) {
    SampleItem? selectedMenu;
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController controller, Widget? child) {
        return FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          child: const Icon(Icons.drag_indicator_sharp),
        );
      },
      menuChildren: List<MenuItemButton>.generate(
        3,
        (int index) => MenuItemButton(
          onPressed: () =>
              setState(() => selectedMenu = SampleItem.values[index]),
          child: Text('Menu ${index + 1}'),
        ),
      ),
    );
  }
}
