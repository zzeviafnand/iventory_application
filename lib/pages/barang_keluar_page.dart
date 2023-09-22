import 'package:flutter/material.dart';

import '../components/appBar/appbar_content.dart';
import '../components/content/bk_widget.dart';

class BarangKeluarPage extends StatefulWidget {
  const BarangKeluarPage({super.key});

  @override
  State<BarangKeluarPage> createState() => _BarangKeluarPageState();
}

class _BarangKeluarPageState extends State<BarangKeluarPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: Column(
        children: [
          Stack(
            children: [
              // ignore: sized_box_for_whitespace
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
                      "Barang Keluar",
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
          const SizedBox(
            height: 10,
          ),
          const Flexible(
            child: BkWidget(),
          ),
          const SizedBox(
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
