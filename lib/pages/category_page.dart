// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import '../components/grid_kategori_widget.dart';
import '../components/appBar/navbar_top.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: Column(
        children: [
          const NavbarTop(title: "Category", imagePath: 'assets/kategori.png'),
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
                GridKategoriWidget(
                  size: Size(12, 12),
                ),
                GridKategoriWidget(
                  size: Size(12, 12),
                ),
                GridKategoriWidget(
                  size: Size(12, 12),
                ),
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
