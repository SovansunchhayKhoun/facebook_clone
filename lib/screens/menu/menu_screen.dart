import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/routes/menu_routes.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          MenuRoutes.settingsTile.length,
          (index) => ListTile(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return MenuRoutes.menuScreens[index][index] as Widget;
                  },
                ),
              );
            },
            title: Text(
              MenuRoutes.settingsTile[index].title,
            ),
          ),
        ),
      ),
    );
  }
}
