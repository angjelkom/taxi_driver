import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_driver/widgets/button.dart';
import 'package:taxi_driver/widgets/phone_number_field.dart';
import 'package:taxi_driver/widgets/body.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      children: [
        Text(
          'Hello, nice to meet you!',
          style: TextStyle(fontSize: 14.0),
        ),
        Text(
          'Join our Company!',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 32.0,
        ),
        PhoneNumberField(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                  children: [
                TextSpan(text: 'By creating an account, you agree to our '),
                TextSpan(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    text: 'Terms of Service',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Terms of Service');
                      }),
                TextSpan(text: ' and '),
                TextSpan(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    text: 'Privacy Policy',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Privacy Policy');
                      }),
              ])),
        ),
        Button(
            text: 'Continue',
            icon: true,
            onPressed: () {
              Get.toNamed('/login');
            })
      ],
    );
  }
}
