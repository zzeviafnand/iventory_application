// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../components/content/bm_widget.dart';
import '../components/data_widget.dart';
import '../components/appBar/navbar_top.dart';

class BarangMasukPage extends StatefulWidget {
  const BarangMasukPage({super.key});

  @override
  State<BarangMasukPage> createState() => _BarangMasukPageState();
}

class _BarangMasukPageState extends State<BarangMasukPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: Column(
        children: [
          const NavbarTop(
              title: "Barang Masuk", imagePath: 'assets/barang.png'),
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
                  Tab(text: 'Barang Masuk'),
                  Tab(text: 'Data transaksi'),
                ],
              ),
            ),
          ),
          const Flexible(
            child: DmWidget(),
          ),
          const SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
