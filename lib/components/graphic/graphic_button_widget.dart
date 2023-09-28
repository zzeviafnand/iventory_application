// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../content/graphic_widget.dart';

class GraphicButtonWidget extends StatelessWidget {
  const GraphicButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 250),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.grey, //background color of button
              side: const BorderSide(
                  width: 3, color: Colors.transparent), //border width and color
              elevation: 4, //elevation of button
              shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(20) //content padding inside button
              ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const GraphicWidget()));
          },
          child: const Text('Graphical')),
    );
  }
}
