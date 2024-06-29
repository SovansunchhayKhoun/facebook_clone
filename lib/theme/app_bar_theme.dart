import 'package:flutter/material.dart';
import 'package:project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

AppBarTheme appBarTheme(BuildContext context) {
  return AppBarTheme(
    backgroundColor: Provider.of<ThemeProvider>(context).themeData.background,
  );
}
