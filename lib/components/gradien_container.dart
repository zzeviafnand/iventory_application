import 'package:flutter/material.dart';

import 'constant.dart';

Container GradientContainer(Size size) {
  return Container(
    height: size.height * .3,
    width: size.width,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      // image: DecorationImage(
      //     image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
    ),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100),
          ),
          gradient: LinearGradient(colors: [
            secondaryColor.withOpacity(0.9),
            primaryColor.withOpacity(0.9)
          ])),
    ),
  );
}
