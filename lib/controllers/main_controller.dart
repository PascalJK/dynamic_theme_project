import 'package:dynamic_theme_project/utils/themes/dark_theme.dart';
import 'package:dynamic_theme_project/utils/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainController extends GetxController {
  static final _box = GetStorage();
  static const _key = 'themeMode';

  static String? readThmeBox() {
    return _box.read(_key);
  }

  ThemeMode get getThemeMode {
    switch (readThmeBox()) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      default:
    }
    return ThemeMode.system;
  }

  bool get isDarkMode => Get.theme.brightness == Brightness.dark;

  void setTheme(ThemeMode theme) {
    _box.write(_key, theme.name);
    // print(_box.read(_key));
    Get.changeTheme(isDarkMode ? DarkTheme.dark : LightTheme.light);
    Get.changeThemeMode(getThemeMode);
    update();
  }
}
