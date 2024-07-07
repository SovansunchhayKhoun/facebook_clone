import 'package:flutter/material.dart';
import 'package:project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

BottomNavigationBarThemeData bottomNavigationBarThemeData(
    BuildContext context) {
  return BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Provider.of<ThemeProvider>(context).themeData.onBackground,
    unselectedItemColor:
        Provider.of<ThemeProvider>(context).themeData.inversePrimary,
    selectedItemColor: Provider.of<ThemeProvider>(context).themeData.primary,
    selectedLabelStyle:
        const TextStyle(overflow: TextOverflow.visible, fontSize: 10),
    unselectedLabelStyle:
        const TextStyle(overflow: TextOverflow.visible, fontSize: 10),
  );
}
