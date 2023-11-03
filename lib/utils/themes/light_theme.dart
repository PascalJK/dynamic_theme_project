import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  static Color primaryTextColor = const Color(0xff212121);
  static Color secondaryTextColor = const Color(0xff757575);

  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme().copyWith(
      elevation: 3,
      titleTextStyle: const TextStyle().copyWith(color: Colors.black, fontSize: 20),
      titleSpacing: 5,
      backgroundColor: Colors.white,
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        // systemNavigationBarColor: tSecondaryColor, // Navigation bar
        statusBarColor: Colors.black, // Status bar
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: primaryTextColor),
      bodyMedium: TextStyle(fontSize: 16, color: primaryTextColor),
      bodySmall: TextStyle(fontSize: 14, color: secondaryTextColor),
    ),
    iconTheme: const IconThemeData().copyWith(color: Colors.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
    ),
  );
}
