import 'package:flutter/material.dart';

class WelcomeNote extends StatelessWidget {
  const WelcomeNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Welcome Bikes to E-Bikes'),
        Text(
          "Buying Electric bikes just got a lot easier, Try us today.",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff96823d),
            height: 48 / 14,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
