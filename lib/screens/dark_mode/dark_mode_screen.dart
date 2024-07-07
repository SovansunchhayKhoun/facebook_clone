import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/layouts/app_bar.dart';
import 'package:project/layouts/my_bottom_nagivation_bar.dart';
import 'package:project/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class DarkModeScreen extends StatelessWidget {
  const DarkModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dark Mode',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          CupertinoSwitch(
            value:
                Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
            onChanged: (value) =>
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(),
          )
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
