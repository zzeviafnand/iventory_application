import 'package:flutter/material.dart';
import 'package:iventory_application/components/appBar/proyeksi_content.dart';
import 'package:iventory_application/components/dropdown_widget.dart';

import '../components/content/graphic_widget.dart';

class ProyeksiPage extends StatefulWidget {
  const ProyeksiPage({super.key});

  @override
  State<ProyeksiPage> createState() => _ProyeksiPageState();
}

class _ProyeksiPageState extends State<ProyeksiPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * .2,
                width: size.width,
              ),
              ProyeksiContainer(size),
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
                    const Text(
                      "Graphics",
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
          const SizedBox(
            height: 10,
          ),
          const DropdownWidget(),
          const SizedBox(
            height: 10,
          ),
          const DropdownWidget(),
          const SizedBox(
            height: 10,
          ),
          const DropdownWidget(),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey, //background color of button
                    side: const BorderSide(
                        width: 3,
                        color: Colors.transparent), //border width and color
                    elevation: 4, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(20)),
                    padding:
                        const EdgeInsets.all(20) //content padding inside button
                    ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const GraphicWidget()));
                },
                child: const Text('Graphical')),
          )
        ],
      ),
    );
  }
}
