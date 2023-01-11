import 'package:flutter/material.dart';

import '../common/color_pickers.dart';

class Themes {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: ColorPickers.white,
    iconTheme: IconThemeData(color: ColorPickers.white.withOpacity(0.3)),
    splashColor: ColorPickers.white.withOpacity(0.3),
    hoverColor: Colors.white.withOpacity(0.05),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: ColorPickers.white, fontSize: 32, fontWeight: FontWeight.w700),
      headline2: TextStyle(
          color: ColorPickers.white, fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    splashColor: Colors.black.withOpacity(0.6),
    iconTheme: IconThemeData(color: Colors.black),
    hoverColor: Colors.black.withOpacity(0.05),
    textTheme: TextTheme(
        headline1: TextStyle(
            color: Colors.black, fontSize: 32, fontWeight: FontWeight.w700),
        headline2: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
  );
}
