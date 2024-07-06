import 'package:flutter/material.dart';
import 'package:project/theme/base_app_color.dart';

class LightModeColor {
  static const Color backgroundColor = Color(0xFFC9CCD1);
  static const Color inversePrimary = Color(0xFF000000);
  static const Color surface = Color(0xFFE1E4E9);
  // static const Color surface = Color(0xFFE1E4E9);
}

ColorScheme lightMode = const ColorScheme.light(
  primary: BaseAppColor.primaryColor,
  primaryContainer: BaseAppColor.primaryContainer,
  secondary: BaseAppColor.secondaryColor,
  secondaryContainer: BaseAppColor.secondaryContainer,
  // tertiary: BaseAppColor.tertiaryColor,

  background: LightModeColor.backgroundColor,
  onBackground: Colors.white,
  inversePrimary: LightModeColor
      .inversePrimary, // This color is typically used for text and icons on top of surfaces that are colored with the primary color
  surface: LightModeColor
      .surface, // This color represents the background of components such as cards, dialogs, bottom sheets, and other surfaces that are elevated above the background.
);
