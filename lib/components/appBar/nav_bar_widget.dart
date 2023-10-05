import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      IconButton(
        icon: const Icon(Icons.abc),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.abc),
        onPressed: () {},
      ),
      const SizedBox(
        width: 100,
      ),
      IconButton(
        icon: const Icon(Icons.abc),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.abc),
        onPressed: () {},
      ),
    ]);
  }
}
