import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<T?> loadModalBottomSheet<T>({
  required Widget widget,
}) {
  return Get.bottomSheet(
    widget,
    isScrollControlled: true,
    elevation: 5,
    barrierColor: Get.isDarkMode ? Colors.white.withOpacity(.2) : null,
    backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
    clipBehavior: Clip.hardEdge,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
  );
}
