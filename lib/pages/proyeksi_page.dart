import 'package:flutter/material.dart';
import 'package:iventory_application/components/dropdown_widget.dart';

import '../components/appBar/navbar_top.dart';
import '../components/graphic/graphic_button_widget.dart';

class ProyeksiPage extends StatefulWidget {
  const ProyeksiPage({super.key});

  @override
  State<ProyeksiPage> createState() => _ProyeksiPageState();
}

class _ProyeksiPageState extends State<ProyeksiPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: Column(
        children: [
          NavbarTop(title: "Proyeksi", imagePath: 'assets/proyeksi.png'),
          SizedBox(
            height: 10,
          ),
          DropdownWidget(),
          SizedBox(
            height: 10,
          ),
          DropdownWidget(),
          SizedBox(
            height: 10,
          ),
          DropdownWidget(),
          SizedBox(
            height: 35,
          ),
          GraphicButtonWidget()
        ],
      ),
    );
  }
}
