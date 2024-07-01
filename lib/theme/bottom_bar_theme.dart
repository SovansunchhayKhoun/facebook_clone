import 'package:flutter/material.dart';
import 'package:project/theme/base_app_color.dart';

BottomNavigationBarThemeData bottomNavigationBarThemeData =
    const BottomNavigationBarThemeData(
  type: BottomNavigationBarType.fixed,
  backgroundColor: BaseAppColor.secondaryColor,
  unselectedItemColor: BaseAppColor.tertiaryColor,
  selectedItemColor: BaseAppColor.primaryColor,
  selectedLabelStyle: TextStyle(overflow: TextOverflow.visible, fontSize: 10),
  unselectedLabelStyle: TextStyle(overflow: TextOverflow.visible, fontSize: 10),
);
