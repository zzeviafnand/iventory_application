import 'package:flutter/material.dart';
import 'package:iventory_application/components/appBar/navbar_top.dart';

import '../components/content/bk_widget.dart';

class BarangKeluarPage extends StatefulWidget {
  const BarangKeluarPage({super.key});

  @override
  State<BarangKeluarPage> createState() => _BarangKeluarPageState();
}

class _BarangKeluarPageState extends State<BarangKeluarPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: Column(
        children: [
          NavbarTop(title: "Barang Keluar", imagePath: 'assets/barang.png'),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: BkWidget(),
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
