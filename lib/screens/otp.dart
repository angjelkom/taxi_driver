import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_driver/widgets/fab_button.dart';
import 'package:taxi_driver/widgets/otp_input.dart';
import 'package:taxi_driver/widgets/body.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      floatingActionButton: FabButton(),
      children: [
        Text('Phone Verification',
            style: Theme.of(context).textTheme.bodyText1),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'Enter your OTP code',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          height: 16.0,
        ),
        RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 12.0),
                children: [
              TextSpan(
                  text:
                      'Enter the 4-digit code sent to you at +994 10 999 00 00.',
                  style: Theme.of(context).textTheme.bodyText1),
              TextSpan(
                  style: Theme.of(context).textTheme.subtitle1,
                  text: ' did you enter the correct number?',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Terms of Service');
                    }),
            ])),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            OtpInput(),
            OtpInput(),
            OtpInput(),
            OtpInput(),
          ],
        ),
        RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 12.0),
                children: [
              TextSpan(
                  text: 'Resend Code in ',
                  style: Theme.of(context).textTheme.bodyText1),
              TextSpan(
                  style: Theme.of(context).textTheme.subtitle2,
                  text: '10 seconds',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Terms of Service');
                    }),
            ])),
      ],
    );
  }
}
