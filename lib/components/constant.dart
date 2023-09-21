import 'package:flutter/material.dart';

var secondaryColor = Color(0xcacaca);
var primaryColor = Color(0xe0e0e0);

ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  // color: Colors.black54,
);
