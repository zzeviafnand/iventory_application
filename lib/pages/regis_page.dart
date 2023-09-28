import 'package:flutter/material.dart';
import 'package:iventory_application/components/content/regis_widget.dart';

class RegisPage extends StatelessWidget {
  RegisPage({super.key});
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: RegisWidget(),
    );
  }
}
