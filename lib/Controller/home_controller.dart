import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Theme/themes.dart';

class HomeController extends GetxController {
  bool darkMode = false;
  ThemeData themeData = Themes.lightTheme;

  void changeMode(bool val) {
    darkMode = val;
    if (darkMode == true) {
      themeData = Themes.darkTheme;
    } else {
      themeData = Themes.lightTheme;
    }
    update();
  }
}
