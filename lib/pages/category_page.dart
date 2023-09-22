// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:iventory_application/components/appBar/kategori_content.dart';

import '../components/appBar/appbar_content.dart';
import '../components/grid_kategori_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 3, vsync: this);
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
              KategoriContainer(size),
              Positioned(
                top: size.height * .10,
                left: 30,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_back_ios_new)),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Kondisi Barang",
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
          SizedBox(
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
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
