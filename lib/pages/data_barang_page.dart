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

class _BarangPageState extends State<BarangPage> with TickerProviderStateMixin {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: Column(
        children: [
          const NavbarTop(title: "Data Barang", imagePath: 'assets/barang.png'),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Tab(
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                tabs: const [
                  Tab(text: 'Data Pupuk'),
                  Tab(text: 'Data Lokasi'),
                  Tab(text: 'Data Distribusi'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Flexible(
            child: DataWidget(),
          ),
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
