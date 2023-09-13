import 'package:flutter/material.dart';

import '../components/device_grid.dart';
import '../components/gradien_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xfff5f7fa),
        body: Column(children: [
          Stack(
            children: [
              Container(
                height: size.height * .3,
                width: size.width,
              ),
              GradientContainer(size),
              Positioned(
                top: size.height * .10,
                left: 30,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Iventory",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                  ],
                ),
              )
            ],
          ),
          DevicesGridDashboard(size: size),
        ]));
  }
}
