import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:taxi_driver/constants/colors.dart';
import 'package:taxi_driver/screens/login.dart';
import 'package:taxi_driver/screens/otp.dart';
import 'package:taxi_driver/screens/signup.dart';
import 'package:taxi_driver/screens/signup/personal.dart';
import 'package:taxi_driver/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: PRIMARY_COLOR,
        fontFamily: 'Poppins',
        textTheme: Theme.of(context).textTheme.copyWith(
            headline5: TextStyle(fontWeight: FontWeight.bold),
            subtitle1:
                TextStyle(color: PRIMARY_COLOR, fontWeight: FontWeight.bold),
            subtitle2:
                TextStyle(color: PRIMARY_COLOR, fontWeight: FontWeight.bold)),
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/signup/personal',
      getPages: [
        GetPage(name: '/welcome', page: () => WelcomeScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/signup', page: () => SignupScreen()),
        GetPage(name: '/signup/personal', page: () => PersonalScreen()),
        GetPage(name: '/otp', page: () => OtpScreen()),
      ],
    );
  }
}
