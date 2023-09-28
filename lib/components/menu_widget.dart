// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
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
          child: const Icon(Icons.add_outlined),
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
