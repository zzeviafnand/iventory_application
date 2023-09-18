import 'package:flutter/material.dart';

import '../components/my_textfield.dart';
import '../components/reg_button.dart';

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 35),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 40),
              // welcome back, you've been missed!
              Text(
                'Please Enter Your New Password',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Re - Password',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              // sign in button
              RegButton(
                onTap: signUserUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
