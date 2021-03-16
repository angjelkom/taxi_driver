import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_driver/widgets/create_account_button.dart';
import 'package:taxi_driver/widgets/button.dart';
import 'package:taxi_driver/widgets/body.dart';
import 'package:taxi_driver/widgets/input.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            Input(
              label: 'Phone number',
              type: TextInputType.phone,
            ),
            Input(
              label: 'Password',
              obscure: true,
            ),
          ],
        ),
        MaterialButton(
          elevation: 0,
          color: Colors.transparent,
          child: Text(
            'Forgot password?',
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
          ),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Button(
              icon: true,
              text: 'Login with Phone',
              onPressed: () {
                Get.toNamed('/login');
              }),
        ),
        createAccountButton()
      ],
    );
  }
}
