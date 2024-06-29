import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/constants/route_constant.dart';
import 'package:project/screens/profile/profile_screen.dart';

class SettingTile {
  final String title;
  final String to;

  SettingTile({
    required this.title,
    required this.to,
  });
}

class MenuScreen extends StatelessWidget {
  final List<SettingTile> settingsTile = [
    SettingTile(
      title: 'Profile',
      to: RouteConstant.profileScreen.name,
    ),
    SettingTile(
      title: 'Dark Mode',
      to: RouteConstant.settingScreen.name,
    ),
  ];

  MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          settingsTile.length,
          (index) => ListTile(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(
                builder: (context) {
                  return const ProfileScreen();
                },
              ));
            },
            title: Text(
              settingsTile[index].title,
            ),
          ),
        ),
      ),
    );
  }
}
