import 'package:flutter/material.dart';
import 'package:iventory_application/components/constant.dart';

class BarangPage extends StatelessWidget {
  const BarangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.upload_rounded),
          ),
        ],
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.add_rounded)),
      ),
      body: Card(
        child: ListTile(
          leading: FlutterLogo(size: 56.0),
          title: Text('Title'),
          subtitle: Text('amount'),
          trailing: Text('Time'),
        ),
      ),
    );
  }
}
