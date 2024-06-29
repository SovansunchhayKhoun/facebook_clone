import 'package:flutter/material.dart';
import 'package:project/theme/dark_mode.dart';
import 'package:project/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ColorScheme _themeData = darkMode;

  ColorScheme get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ColorScheme themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
