import 'package:flutter/material.dart';
import 'package:iventory_application/pages/barang_masuk_page.dart';
import 'package:iventory_application/pages/category_page.dart';
import 'package:iventory_application/pages/item_condition_page.dart';

import '../pages/barang_keluar_page.dart';
import '../pages/data_barang_page.dart';
import 'card_field.dart';

class DevicesGridDashboard extends StatelessWidget {
  const DevicesGridDashboard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BarangPage()));
                },
                child: CardField(
                  size,
                  Colors.blue,
                  const Icon(
                    Icons.filter_1_sharp,
                    color: Colors.white,
                  ),
                  'Data Barang',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BarangMasukPage()));
                },
                child: CardField(
                  size,
                  Colors.amber,
                  const Icon(Icons.filter_2_sharp, color: Colors.white),
                  'Barang Masuk',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BarangKeluarPage()));
                },
                child: CardField(
                  size,
                  Colors.orange,
                  const Icon(Icons.filter_3_sharp, color: Colors.white),
                  'Barang Keluar',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ItemConditionPage()));
                },
                child: CardField(
                  size,
                  Colors.teal,
                  const Icon(Icons.image_rounded, color: Colors.white),
                  'Kondisi Barang',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CategoryPage()));
                },
                child: CardField(
                  size,
                  Colors.purple,
                  const Icon(Icons.image_rounded, color: Colors.white),
                  'Kategori',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BarangPage()));
                },
                child: CardField(
                  size,
                  Colors.green,
                  const Icon(Icons.image_rounded, color: Colors.white),
                  'Proyeksi',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
