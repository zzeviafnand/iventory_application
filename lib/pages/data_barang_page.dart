// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:iventory_application/components/appBar/navbar_top.dart';
import 'package:iventory_application/components/menu_widget.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: const Column(
        children: [
          NavbarTop(title: "Data Barang", imagePath: 'assets/barang.png'),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: DataWidget(),
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
      floatingActionButton: const MenuWidget(),
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
