import 'package:flutter/material.dart';

class ThemeModel {
  final ThemeMode mode;
  final IconData icon;

  ThemeModel({required this.mode, required this.icon});

  String get themeName => mode.name;

  bool isSelected(String value) => value == mode.name;
}
