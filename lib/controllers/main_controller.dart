import 'package:dynamic_theme_project/utils/themes/dark_theme.dart';
import 'package:dynamic_theme_project/utils/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainController extends GetxController {
  static final _box = GetStorage();
  static const _key = 'themeMode';

  static String? readThmeBox() => _box.read(_key);

  ThemeMode get getThemeMode {
    return switch (readThmeBox()) {
      'dark' => ThemeMode.dark,
      'light' => ThemeMode.light,
      _ => ThemeMode.system
    };
  }

  ThemeData get getThemeData {
    return switch (readThmeBox()) {
      'dark' => DarkTheme.dark,
      'light' => LightTheme.light,
      _ => Get.isPlatformDarkMode ? DarkTheme.dark : LightTheme.light,
    };
  }

  bool get isDarkMode => Get.isPlatformDarkMode;

  bool get isSystemMode => getThemeMode == ThemeMode.system;

  void setTheme(ThemeMode theme) {
    _box.write(_key, theme.name);
    Get.changeTheme(getThemeData);
    Get.changeThemeMode(theme);
  }
}
