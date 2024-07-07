import 'package:flutter/material.dart';
import 'package:project/theme/base_app_color.dart';

class DarkModeColor {
  static const Color backgroundColor = Colors.black;
  static const Color inversePrimary = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFF38393B);
  // static const Color surface = Color(0xFF3A3B3D);
}

ColorScheme darkMode = const ColorScheme.dark(
  primary: BaseAppColor.primaryColor,
  primaryContainer: BaseAppColor.primaryContainer,
  secondary: BaseAppColor.secondaryColor,
  secondaryContainer: BaseAppColor.secondaryContainer,
  // tertiary: BaseAppColor.tertiaryColor,

  background: DarkModeColor.backgroundColor,
  onBackground: Color.fromRGBO(26, 27, 29, 1),
  inversePrimary: DarkModeColor.inversePrimary,
  surface: DarkModeColor.surface,
);
