// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../pages/data_barang_page.dart';

Padding CustomCard(Size size, context) {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BarangPage(),
          )),
      child: Container(
        height: size.height * .15,
        width: size.width * .5,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage(
                "assets/bg.jpg",
              ),
              fit: BoxFit.cover,
            )),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black.withOpacity(0.3),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 15, top: size.height * .12),
            child: const Text(
              'Room',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}
