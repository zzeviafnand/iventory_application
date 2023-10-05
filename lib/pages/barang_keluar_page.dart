import 'package:flutter/material.dart';
import 'package:iventory_application/components/appBar/navbar_top.dart';

import '../components/content/bk_widget.dart';

class BarangKeluarPage extends StatefulWidget {
  const BarangKeluarPage({super.key});

  @override
  State<BarangKeluarPage> createState() => _BarangKeluarPageState();
}

class _BarangKeluarPageState extends State<BarangKeluarPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: Column(
        children: [
          const NavbarTop(
              title: "Barang Keluar", imagePath: 'assets/barang.png'),
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
                  Tab(text: 'Data Distribusi'),
                ],
              ),
            ),
          ),
          const Flexible(
            child: BkWidget(),
          ),
          const SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
