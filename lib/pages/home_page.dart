// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../components/menu_grid_widget.dart';
import '../components/appBar/navbar_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xfff5f7fa),
        body: Column(children: [
          const NavbarHome(title: 'Iventory', imagePath: 'assets/iventori.png'),
          DevicesGridDashboard(size: size),
        ]));
  }
}
