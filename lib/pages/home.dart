import 'package:dynamic_theme_project/components/theme_picker_popup.dart';
import 'package:dynamic_theme_project/controllers/main_controller.dart';
import 'package:dynamic_theme_project/models/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.mainController});
  final MainController mainController;

  @override
  Widget build(BuildContext context) {
    var icon = context.isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined;
    var modeTxt = context.isDarkMode ? 'Dark' : 'Light';
    return Scaffold(
      appBar: AppBar(title: const Text('Dynamic Theme App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 85),
          const SizedBox(height: 15),
          Text('The Current Theme Mode is: $modeTxt'),
          if (mainController.isSystemMode) ...[
            const Text('Theme Mode Base on system prefs.'),
          ],
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () => loadModalBottomSheet(
                  widget: ThemePickerPopup(items: [
                ThemeModel(mode: ThemeMode.dark, icon: Icons.dark_mode_outlined),
                ThemeModel(mode: ThemeMode.light, icon: Icons.light_mode_outlined),
                ThemeModel(mode: ThemeMode.system, icon: Icons.settings),
              ])),
              child: const Text('Change Theme'),
            ),
          ),
        ],
      ),
    );
  }
}
