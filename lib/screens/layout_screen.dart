import 'package:flutter/material.dart';
import 'package:project/layouts/app_bar.dart';
import 'package:project/layouts/my_bottom_nagivation_bar.dart';
import 'package:project/providers/layout_provider.dart';
import 'package:project/routes/app_route.dart';
import 'package:provider/provider.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LayoutProvider>(builder: (context, layoutProvider, child) {
      return Scaffold(
        appBar: const MyAppBar(),
        body: IndexedStack(
          index: layoutProvider.getSelectedIndex,
          children: AppRoute.appPages,
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
      );
    });
  }
}
