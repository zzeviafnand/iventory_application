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

class _BarangMasukPageState extends State<BarangMasukPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: Column(
        children: [
          NavbarTop(title: "Barang Masuk", imagePath: 'assets/barang.png'),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: DmWidget(),
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
