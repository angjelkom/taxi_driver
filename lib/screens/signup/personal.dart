import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_driver/widgets/button.dart';
import 'package:taxi_driver/widgets/body.dart';
import 'package:taxi_driver/widgets/input.dart';

class PersonalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      overlapAppBar: true,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/avatar.svg',
          semanticsLabel: 'Acme Logo',
          fit: BoxFit.cover,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(
              text: 'Free',
              expanded: true,
              onPressed: () {},
            ),
            SizedBox(
              width: 16.0,
            ),
            Button(
              text: 'Business',
              expanded: true,
              outlined: true,
              onPressed: () {},
            )
          ],
        ),
        Input(label: 'First name'),
        Input(label: 'Last name'),
        Input(label: 'Home address'),
        Input(obscure: true, label: 'Password'),
        SizedBox(
          height: 48.0,
        ),
        Button(
          icon: true,
          onPressed: () {},
          text: 'Create Account',
        )
      ],
    );
  }
}
