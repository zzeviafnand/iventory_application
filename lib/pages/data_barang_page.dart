import 'package:flutter/material.dart';

import '../components/appbar_content.dart';

class BarangPage extends StatelessWidget {
  const BarangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarContent(title: 'Data Barang'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Title'),
              subtitle: Text('amount'),
              trailing: Text('Time'),
            ),
          ),
        ),
      ),
    );
  }
}
