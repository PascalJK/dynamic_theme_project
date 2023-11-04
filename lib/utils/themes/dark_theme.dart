import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DarkTheme {
  static Color primaryTextColor = const Color(0xffF5F5F5);
  static Color secondaryTextColor = const Color(0xffF8F8FF);

  static final dark = ThemeData.light().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(
      background: Colors.grey.shade900,
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade700,
    ),
    appBarTheme: const AppBarTheme().copyWith(
      elevation: 3,
      shadowColor: Colors.grey,
      titleTextStyle: const TextStyle().copyWith(color: primaryTextColor, fontSize: 20),
      titleSpacing: 5,
      backgroundColor: Colors.black,
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        // systemNavigationBarColor: tSecondaryColor, // Navigation bar
        statusBarColor: Colors.grey, // Status bar
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: primaryTextColor),
      bodyMedium: TextStyle(fontSize: 16, color: primaryTextColor),
      bodySmall: TextStyle(fontSize: 14, color: secondaryTextColor),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
    ),
  );
}
