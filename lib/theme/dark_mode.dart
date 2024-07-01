import 'package:flutter/material.dart';
import 'package:project/theme/base_app_color.dart';

class DarkModeColor {
  static const Color backgroundColor = Color.fromRGBO(24, 25, 26, 1);
  static const Color inversePrimary = Color(0xFFFFFFFF);
}

ColorScheme darkMode = const ColorScheme.dark(
  primary: BaseAppColor.primaryColor,
  secondary: BaseAppColor.secondaryColor,
  tertiary: BaseAppColor.tertiaryColor,
  background: DarkModeColor.backgroundColor,
  inversePrimary: DarkModeColor.inversePrimary,
);
