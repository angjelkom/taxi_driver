import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:taxi_driver/constants/colors.dart';

class Button extends StatelessWidget {
  final color;
  final String text;
  final enabled = false.obs;
  final Function onPressed;
  final outlined;
  final icon;
  final expanded;
  Button(
      {Key key,
      this.color: PRIMARY_COLOR,
      this.text,
      this.onPressed,
      this.outlined = false,
      this.icon = false,
      this.expanded = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Obx(
      () => Expanded(
        flex: expanded ? 1 : 0,
        child: Container(
          decoration: enabled.value || !icon
              ? null
              : BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: isDark ? SHADOW_COLOR_DARK : SHADOW_COLOR,
                    blurRadius: 15,
                    offset: const Offset(0, 5.0),
                  ),
                ]),
          child: MaterialButton(
            textColor: outlined ? color : Colors.white,
            disabledTextColor: isDark ? DISABLED_COLOR_DARK : DISABLED_COLOR,
            disabledColor: Colors.white,
            shape: icon
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0))
                : outlined
                    ? ContinuousRectangleBorder(
                        side: BorderSide(color: color, width: 1.0))
                    : null,
            // clipBehavior: Clip.antiAlias,
            elevation: 0.0,
            // disabledElevation: 4.0,
            color: outlined ? Colors.white : color,
            child: Padding(
              padding: icon
                  ? const EdgeInsets.all(16.0)
                  // : const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
                  : const EdgeInsets.all(0),
              child: icon
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.0),
                        ),
                        SvgPicture.asset(
                          'assets/arrow-right.svg',
                          semanticsLabel: 'Right Arrow',
                          fit: BoxFit.cover,
                          color: enabled.value
                              ? null
                              : isDark
                                  ? DISABLED_COLOR_DARK
                                  : DISABLED_COLOR,
                        )
                      ],
                    )
                  : Text(
                      text,
                      style: TextStyle(
                          fontWeight: icon ? FontWeight.w600 : FontWeight.bold,
                          fontSize: 14.0),
                    ),
            ),
            onPressed: enabled.value ? onPressed : null,
          ),
        ),
      ),
    );
  }
}
