import 'package:flutter/material.dart';
import 'package:project/components/layout/app_bar.dart';
import 'package:project/components/layout/my_bottom_nagivation_bar.dart';

class DarkModeScreen extends StatelessWidget {
  const DarkModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text('Dark Mode'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
