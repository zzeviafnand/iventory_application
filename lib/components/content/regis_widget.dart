import 'package:flutter/material.dart';

import '../field/reg_button.dart';
import '../loginRegisComponent/my_textfield.dart';
import '../loginRegisComponent/password_widget.dart';

class RegisWidget extends StatelessWidget {
  RegisWidget({super.key});
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();

  // sign user in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            PasswordField(),
            const SizedBox(height: 10),
            PasswordField(),
            const SizedBox(height: 25),
            // sign in button
            RegButton(
              onTap: signUserUp,
            ),
          ],
        ),
      ),
    );
  }
}
