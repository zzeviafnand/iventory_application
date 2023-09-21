import 'package:flutter/material.dart';

import '../components/appbar_content.dart';
import '../components/constant.dart';
import '../components/data_widget.dart';
import '../components/gradien_container.dart';

class ItemConditionPage extends StatefulWidget {
  const ItemConditionPage({super.key});

  @override
  State<ItemConditionPage> createState() => _ItemConditionPageState();
}

class _ItemConditionPageState extends State<ItemConditionPage>
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
              ContentContainer(size),
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
                tabs: [
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
            height: 200,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                DataWidget(),
                DataWidget(),
                DataWidget(),
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
