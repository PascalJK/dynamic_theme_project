import 'package:dynamic_theme_project/controllers/main_controller.dart';
import 'package:dynamic_theme_project/pages/home.dart';
import 'package:dynamic_theme_project/utils/themes/dark_theme.dart';
import 'package:dynamic_theme_project/utils/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MainApp(controller: Get.put(MainController())));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.controller});
  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: DarkTheme.dark,
      theme: LightTheme.light,
      themeMode: controller.getThemeMode,
      home: HomePage(
        mainController: controller,
      ),
    );
  }
}
