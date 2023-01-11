import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testwidget/Theme/themes.dart';
import 'package:testwidget/View/home_screen.dart';

import 'Controller/home_controller.dart';
import 'Theme/theme_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => GetMaterialApp(
        title: 'Theme',
        theme: Themes.lightTheme,
        debugShowCheckedModeBanner: false,
        darkTheme: Themes.darkTheme,
        initialBinding: BaseBindings(),
        themeMode: ThemeMode.light,
        home: DarkTransition(
          isDark: controller.darkMode,
          offset: Offset(Get.width, Get.height),
          childBuilder: (p0, p1) => const HomeScreen(),
        ),
      ),
    );
  }
}

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}
