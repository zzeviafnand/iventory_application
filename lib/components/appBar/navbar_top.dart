import 'package:flutter/material.dart';
import 'package:iventory_application/components/constant.dart';

class NavbarTop extends StatelessWidget {
  const NavbarTop({super.key, required this.title, required this.imagePath});
  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          height: size.height * .2,
          width: size.width,
        ),
        Container(
          height: size.height * .2,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.scaleDown),
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
        ),
        Positioned(
          top: size.height * .10,
          left: 30,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.arrow_back_ios_new)),
              const SizedBox(
                width: 12,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ],
          ),
        )
      ],
    );
  }
}
