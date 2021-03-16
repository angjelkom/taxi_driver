import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taxi_driver/constants/colors.dart';
import 'package:taxi_driver/widgets/create_account_button.dart';
import 'package:taxi_driver/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500.0,
            child: PageView(
              controller: _pageController,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedOpacity(
                      opacity: 1,
                      duration: Duration(milliseconds: 3000),
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello, nice to meet you!',
                                style: TextStyle(fontSize: 14.0),
                              ),
                              Text(
                                'Get a new experience',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                    ),
                    SvgPicture.asset(
                      'assets/background.svg',
                      semanticsLabel: 'Acme Logo',
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, nice to meet you!',
                              style: TextStyle(fontSize: 14.0),
                            ),
                            Text(
                              'Get a new experience',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.w700),
                            ),
                          ],
                        )),
                    SvgPicture.asset(
                      'assets/background.svg',
                      semanticsLabel: 'Acme Logo',
                      alignment: Alignment(0.7, 0),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, nice to meet you!',
                              style: TextStyle(fontSize: 14.0),
                            ),
                            Text(
                              'Get a new experience',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.w700),
                            ),
                          ],
                        )),
                    SvgPicture.asset(
                      'assets/background.svg',
                      semanticsLabel: 'Acme Logo',
                      alignment: Alignment(1.385, 0),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: WormEffect(
                dotWidth: 12.0,
                dotHeight: 12.0,
                activeDotColor: PRIMARY_COLOR,
                dotColor: isDark ? DOT_COLOR_DARK : DOT_COLOR),
          ),
          SizedBox(
            height: 32.0,
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button(
                  text: 'Login with Phone',
                  onPressed: () {
                    Get.toNamed('/login');
                  })),
          Align(
            alignment: Alignment.centerLeft,
            child: createAccountButton(),
          )
        ],
      )),
    );
  }
}
