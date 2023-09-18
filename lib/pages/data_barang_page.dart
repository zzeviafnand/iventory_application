import 'package:flutter/material.dart';

import '../components/appbar_content.dart';
import '../components/constant.dart';
import '../components/data_widget.dart';
import '../components/gradien_container.dart';

class BarangPage extends StatefulWidget {
  const BarangPage({super.key});

  @override
  State<BarangPage> createState() => _BarangPageState();
}

class _BarangPageState extends State<BarangPage> {
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
                      "Data Barang",
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
            child: DataWidget(),
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[100],
        onPressed: () {},
        child: const Icon(Icons.add_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.blueGrey[200],
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
      ),
    );
  }
}
