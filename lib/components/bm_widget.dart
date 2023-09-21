import 'package:flutter/material.dart';
import 'package:iventory_application/components/item_show_widget.dart';

import 'box_widget.dart';

class DmWidget extends StatelessWidget {
  const DmWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Barang 1',
      'Barang 2',
      'Barang 3',
      'Barang 4',
      'Barang 5',
      'Barang 6',
      'Barang 7',
      'Barang 8',
      'Barang 9',
      'Barang 0',
    ];
    // final List<int> colorCodes = <int>[
    //   600,
    //   500,
    //   200,
    //   600,
    //   500,
    //   300,
    //   600,
    //   500,
    //   300,
    //   400
    // ];
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            selectedColor: Colors.blue,
            leading: Hero(
              tag: 'hero-rectangle' + index.toString(),
              child: Icon(
                Icons.image_sharp,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ItemShowWidget(
                    size: const Size(400.0, 400.0),
                    color: Colors.blue[700]!.withOpacity(0.5),
                  ),
                ),
              );
            },
            title: Text(entries[index]),
            subtitle: Text('Mount'),
            trailing: Text('Date'),
          );
        },
      ),
    );
  }

  // void _gotoDetailsPage(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute<void>(
  //     builder: (BuildContext context) => Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Second Page'),
  //       ),
  //       body: Center(
  //         child: Hero(
  //           tag: '$entries'+index.toString(),
  //           child: BoxWidget(size: Size(200.0, 200.0)),
  //         ),
  //       ),
  //     ),
  //   ));
  // }
}
