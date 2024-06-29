import 'package:flutter/material.dart';
import 'package:project/theme/base_app_color.dart';

class DarkModeColor {
  static const Color backgroundColor = Color.fromRGBO(36, 37, 38, 1);
  static const Color inversePrimary = Color(0xFF898F9C);
}

ColorScheme darkMode = const ColorScheme.dark(
  primary: BaseAppColor.primaryColor,
  background: DarkModeColor.backgroundColor,
  tertiary: BaseAppColor.tertiary,
  inversePrimary: DarkModeColor.inversePrimary,
);
