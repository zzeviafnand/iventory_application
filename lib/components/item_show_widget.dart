import 'package:flutter/material.dart';

import 'appBar/appbar_sub_widget.dart';

class ItemShowWidget extends StatelessWidget {
  const ItemShowWidget({
    super.key,
    required this.title,
    required this.size,
    required this.color,
  });

  final Size size;
  final Text title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SubAppWidget(
        title: Text('Item'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        'lib/images/google.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama Barang'),
                          SizedBox(
                            height: 12,
                          ),
                          Text('Lokasi Barang'),
                          SizedBox(
                            height: 12,
                          ),
                          Text('Tanggal Masuk'),
                          SizedBox(
                            height: 12,
                          ),
                          Text('Tanggal Keluar'),
                          SizedBox(
                            height: 12,
                          ),
                          Text('Keterangan Barang'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
