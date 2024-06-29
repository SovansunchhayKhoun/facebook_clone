import 'package:flutter/material.dart';
import 'package:project/theme/base_app_color.dart';

class LightModeColor {
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color inversePrimary = Color.fromRGBO(36, 37, 38, 1);
}

ColorScheme lightMode = const ColorScheme.light(
  primary: BaseAppColor.primaryColor,
  tertiary: BaseAppColor.tertiaryColor,
  background: LightModeColor.backgroundColor,
  inversePrimary: LightModeColor.inversePrimary,
);
