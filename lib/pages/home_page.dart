import 'package:flutter/material.dart';

import '../components/device_grid.dart';
import '../components/gradien_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xfff5f7fa),
        body: Column(children: [
          Stack(
            children: [
              Container(
                height: size.height * .4,
                width: size.width,
              ),
              GradientContainer(size),
              Positioned(
                top: size.height * .15,
                left: 30,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Iventory",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 10, bottom: 5),
                    //   child: Text(
                    //     "Rooms",
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.w600,
                    //         fontSize: 17),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
          DevicesGridDashboard(size: size),
        ]));
  }
}
