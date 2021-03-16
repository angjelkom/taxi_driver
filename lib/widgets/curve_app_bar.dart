import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:taxi_driver/constants/colors.dart';

class CurveAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return CurveAppBar();
    // return Container(height: 300, color: Colors.blue);
  }

  @override
  double get maxExtent => 100.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class CurveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String backTitle;
  CurveAppBar({this.backTitle = 'Back'});
  @override
  Widget build(BuildContext context) {
    // final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Container(
        height: 100.0,
        color: Colors.transparent,
        // padding: EdgeInsets.only(top: statusbarHeight),
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   begin: FractionalOffset(0.5, 0.0), end: FractionalOffset(0.6, 0.8),
        //   // Add one stop for each color. Stops should increase from 0 to 1
        //   stops: [0.0, 0.9], colors: [YELLOW, BLUE],
        // )),
        child: Stack(
          children: [
            CustomPaint(
              child: Container(
                color: Colors.transparent,
              ),
              painter: CurvePainter(),
            ),
            Positioned.fill(
              top: 50.0,
              child: NavigationToolbar(
                leading: MaterialButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RotatedBox(
                        quarterTurns: 2,
                        child: SvgPicture.asset(
                          'assets/arrow-right.svg',
                          semanticsLabel: 'Acme Logo',
                          fit: BoxFit.cover,
                          width: 16.0,
                        ),
                      ),
                      Text(
                        backTitle.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  onPressed: () => Get.back(),
                ),
              ),
            ),
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = PRIMARY_COLOR;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 1.8);
    path.quadraticBezierTo(
        size.width / 2.2, size.height * 2.6, size.width, size.height * 1.4);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
