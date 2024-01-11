import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
  );

  static const Color primaryColor = Color(0xffFFCE23);
  static const Color secondaryColor = Color(0xffF1F6FB);

  static const Color primaryTextColor = Color(0xff000000);
  static const Color textHeaderColor = Color(0xff092c4c);
  static const Color textColor1 = Color(0xff96823d);
  static const Color textColor2 = Color(0xff424242);
  static const Color textColor3 = Color(0xffFFFFFF);

  static const TextStyle titleRegular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 22 / 18,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32 / 24,
  );

  static const TextStyle bodyRegular = TextStyle(
    fontSize: 14,
    height: 36 / 14,
    fontWeight: FontWeight.w400,
  );

// TODO add inter font to pubspec.yaml
}
