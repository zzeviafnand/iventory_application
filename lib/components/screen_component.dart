import 'package:flutter/material.dart';

import 'card_widget.dart';
import 'constant.dart';

class ScenesDashboard extends StatelessWidget {
  const ScenesDashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Scenes",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardWidget(
                    icon: Icon(
                      Icons.home_work_rounded,
                      color: secondaryColor,
                    ),
                    title: 'Coming Home'),
                CardWidget(
                    icon: Icon(
                      Icons.home,
                      color: secondaryColor,
                    ),
                    title: 'At Home')
              ],
            ),
          )
        ],
      ),
    );
  }
}
