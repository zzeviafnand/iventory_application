// ignore_for_file: no_leading_underscores_for_local_identifiers, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../components/data_widget.dart';
import '../components/appBar/navbar_top.dart';

class ItemConditionPage extends StatefulWidget {
  const ItemConditionPage({super.key});

  @override
  State<ItemConditionPage> createState() => _ItemConditionPageState();
}

class _ItemConditionPageState extends State<ItemConditionPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: Column(
        children: [
          const NavbarTop(
              title: "Kondisi Barang", imagePath: 'assets/barang.png'),
          Container(
            child: Tab(
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                tabs: const [
                  Tab(text: 'Kondisi Pertama'),
                  Tab(text: 'Kondisi Kedua'),
                  Tab(text: 'Kondisi Ketiga'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 470,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: const [
                DataWidget(),
                DataWidget(),
                DataWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
