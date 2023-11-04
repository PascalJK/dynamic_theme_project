import 'package:dynamic_theme_project/controllers/main_controller.dart';
import 'package:dynamic_theme_project/models/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemePickerPopup extends StatelessWidget {
  final ValueChanged<String>? onSelected;
  final List<ThemeModel> items;
  const ThemePickerPopup({
    super.key,
    required this.items,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final mController = Get.find<MainController>();

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 45,
        maxHeight: Get.height / 1.2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Select Theme Mode',
              style: context.textTheme.bodyLarge?.copyWith(fontSize: 25),
            ),
          ),
          const Divider(),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: List.generate(
                items.length,
                (index) {
                  var item = items[index];
                  return MaterialButton(
                    onPressed: () {
                      mController.setTheme(item.mode);
                      onSelected?.call(item.themeName);
                      Get.back();
                    },
                    child: Text(
                      items[index].themeName,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: item.isSelected(mController.getThemeMode.name)
                            ? Colors.green
                            : Get.iconColor,
                        fontWeight: item.isSelected(mController.getThemeMode.name)
                            ? FontWeight.bold
                            : FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
