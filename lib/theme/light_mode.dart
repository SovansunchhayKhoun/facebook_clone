import 'package:flutter/material.dart';
import 'package:project/theme/base_app_color.dart';

class LightModeColor {
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color inversePrimary = Color(0xFF000000);
}

ColorScheme lightMode = const ColorScheme.light(
  primary: BaseAppColor.primaryColor,
  secondary: BaseAppColor.secondaryColor,
  tertiary: BaseAppColor.tertiaryColor,
  background: LightModeColor.backgroundColor,
  inversePrimary: LightModeColor.inversePrimary,
);
