import 'package:flutter/material.dart';

var secondaryColor = const Color(0x00cacaca);
var primaryColor = const Color(0x00e0e0e0);

ShapeBorder kBackButtonShape = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = const Icon(
  Icons.arrow_back_ios,
  // color: Colors.black54,
);
