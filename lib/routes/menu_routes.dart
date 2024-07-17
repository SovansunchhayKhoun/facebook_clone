import 'package:flutter/material.dart';
import 'package:project/screens/dark_mode/dark_mode_screen.dart';
import 'package:project/screens/friends/friends_screen.dart';
import 'package:project/screens/profile/profile_screen.dart';

class SettingTile {
  final String title;

  SettingTile({
    required this.title,
  });
}

class MenuRoutes {
  static final List<SettingTile> settingsTile = [
    SettingTile(
      title: 'Profile',
    ),
    SettingTile(
      title: 'Dark Mode',
    ),
    SettingTile(
      title: 'Friends',
    ),
  ];

  static final List<Map<int, Widget>> menuScreens = [
    {
      0: const ProfileScreen(),
    },
    {
      1: const DarkModeScreen(),
    },
    {
      2: const FriendsScreen(),
    },
  ];
}
