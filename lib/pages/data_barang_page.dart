// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../components/constant.dart';
import '../components/data_widget.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class BarangPage extends StatefulWidget {
  const BarangPage({super.key});

  @override
  State<BarangPage> createState() => _BarangPageState();
}

class _BarangPageState extends State<BarangPage> {
  SampleItem? selectedMenu;
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
              Container(
                height: size.height * .2,
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('assets/barang.png'),
                      fit: BoxFit.scaleDown),
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
                    const Text(
                      "Data Barang",
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
          const Flexible(
            child: DataWidget(),
          ),
          const SizedBox(
            height: 35,
          )
        ],
      ),
      floatingActionButton: MenuAnchor(
        builder:
            (BuildContext context, MenuController controller, Widget? child) {
          return FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              if (controller.isOpen) {
                controller.close();
              } else {
                controller.open();
              }
            },
            child: const Icon(Icons.add_outlined),
          );
        },
        menuChildren: List<MenuItemButton>.generate(
          3,
          (int index) => MenuItemButton(
            onPressed: () =>
                setState(() => selectedMenu = SampleItem.values[index]),
            child: Text('Item ${index + 1}'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.blueGrey[200],
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
      ),
    );
  }
}
