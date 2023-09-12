import 'package:flutter/material.dart';

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
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Devices",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BarangPage()));
                },
                child: CardField(
                  size,
                  Colors.blue,
                  Icon(
                    Icons.filter_1_sharp,
                    color: Colors.white,
                  ),
                  'Data Barang',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BarangPage()));
                },
                child: CardField(
                  size,
                  Colors.amber,
                  Icon(Icons.filter_2_sharp, color: Colors.white),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BarangPage()));
                },
                child: CardField(
                  size,
                  Colors.orange,
                  Icon(Icons.filter_3_sharp, color: Colors.white),
                  'Barang Keluar',
                ),
              ),
              CardField(
                size,
                Colors.teal,
                Icon(Icons.sports_cricket_sharp, color: Colors.white),
                'Cricket bat',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardField(
                size,
                Colors.purple,
                Icon(Icons.wifi_outlined, color: Colors.white),
                'Sensors',
              ),
              CardField(
                size,
                Colors.green,
                Icon(Icons.air_outlined, color: Colors.white),
                'Air Condition',
              ),
            ],
          )
        ],
      ),
    );
  }
}
