// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../components/appbar_content.dart';
import '../components/data_widget.dart';
import '../components/bm_widget.dart';

class BarangMasukPage extends StatefulWidget {
  const BarangMasukPage({super.key});

  @override
  State<BarangMasukPage> createState() => _BarangMasukPageState();
}

class _BarangMasukPageState extends State<BarangMasukPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                      "Barang Masuk",
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
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.cyan[100],
      //   onPressed: () {},
      //   child: const Icon(Icons.add_outlined),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   height: 50,
      //   color: Colors.blueGrey[200],
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 5,
      // ),
    );
  }
}
