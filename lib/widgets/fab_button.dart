import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:taxi_driver/constants/colors.dart';

class FabButton extends StatelessWidget {
  final color;
  final Function onPressed;
  final enabled = false.obs;
  FabButton({Key key, this.color: PRIMARY_COLOR, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Obx(() => Container(
          decoration: BoxDecoration(
            color: enabled.value ? color : Colors.white,
            boxShadow: [
              BoxShadow(
                color: isDark ? SHADOW_COLOR_DARK : SHADOW_COLOR,
                blurRadius: 15,
                offset: const Offset(0, 5.0),
              ),
            ],
            shape: BoxShape.circle,
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 0.0,
            onPressed: onPressed,
            child: SvgPicture.asset(
              'assets/arrow-right.svg',
              semanticsLabel: 'Right Arrow',
              fit: BoxFit.cover,
              width: 12.0,
              color: enabled.value
                  ? null
                  : isDark
                      ? DISABLED_COLOR_DARK
                      : DISABLED_COLOR,
            ),
          ),
        ));
  }
}
