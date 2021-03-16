import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_driver/constants/colors.dart';

class PhoneNumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      // padding: EdgeInsets.all(16.0),
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
      child: IntrinsicHeight(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28.0)
                  .copyWith(left: 16.0, right: 8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/azerbaijan.svg',
                    semanticsLabel: 'Acme Logo',
                    fit: BoxFit.cover,
                    width: 32.0,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    '+994',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  SvgPicture.asset(
                    'assets/arrow-down.svg',
                    semanticsLabel: 'Acme Logo',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: DIVIDER_COLOR,
              thickness: 2.0,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle:
                        TextStyle(color: isDark ? HINT_COLOR_DARK : HINT_COLOR),
                    hintText: 'Enter your phone number'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
