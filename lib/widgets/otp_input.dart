import 'package:flutter/material.dart';
import 'package:taxi_driver/constants/colors.dart';

class OtpInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    final node = FocusScope.of(context);
    return Expanded(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: isDark ? SHADOW_COLOR_DARK : SHADOW_COLOR,
                    blurRadius: 15,
                    offset: const Offset(0, 5.0),
                  ),
                ]),
            child: TextField(
              maxLength: 1,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: isDark ? DISABLED_COLOR_DARK : DISABLED_COLOR,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '',
                hintText: '•',
                hintStyle: TextStyle(
                    color: isDark ? DISABLED_COLOR_DARK : DISABLED_COLOR,
                    height: 1.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              onChanged: (text) {
                if (text.isNotEmpty) {
                  node.nextFocus();
                }
              },
            )));
  }
}
