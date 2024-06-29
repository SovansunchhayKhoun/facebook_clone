import 'package:flutter/material.dart';
import 'package:project/theme/app_bar_theme.dart';
import 'package:project/theme/text_theme.dart';
import 'package:project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme(context),
    fontFamily: 'Facebook Letter Face',
    scaffoldBackgroundColor:
        Provider.of<ThemeProvider>(context).themeData.background,
    colorScheme: Provider.of<ThemeProvider>(context).themeData,
    textTheme: textTheme,
  );
}
