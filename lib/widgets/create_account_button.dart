import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget createAccountButton() {
  return MaterialButton(
    elevation: 0,
    color: Colors.transparent,
    child: Text(
      'Or Create My Account',
      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14.0),
    ),
    onPressed: () {
      Get.toNamed('/signup');
    },
  );
}
