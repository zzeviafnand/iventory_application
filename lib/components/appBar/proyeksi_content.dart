import 'package:flutter/material.dart';

import '../constant.dart';

Container ProyeksiContainer(Size size) {
  return Container(
    height: size.height * .2,
    width: size.width,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      image: DecorationImage(
          image: AssetImage('assets/proyeksi.png'), fit: BoxFit.scaleDown),
    ),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(60),
          ),
          gradient: LinearGradient(colors: [
            secondaryColor.withOpacity(0.9),
            primaryColor.withOpacity(0.9)
          ])),
    ),
  );
}