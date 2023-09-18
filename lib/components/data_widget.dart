import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
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
            leading: Icon(Icons.image_sharp),
            title: Text(entries[index]),
            subtitle: Text('Mount'),
            trailing: Text('Date'),
          );
        },
      ),
    );
  }
}
