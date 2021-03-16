import 'package:flutter/material.dart';
import 'package:taxi_driver/constants/colors.dart';

class Input extends StatelessWidget {
  final type;
  final obscure;
  final label;

  Input(
      {Key key,
      this.type = TextInputType.text,
      this.obscure = false,
      this.label = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      obscureText: obscure,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 1.0, color: BORDER_COLOR))),
    );
  }
}
