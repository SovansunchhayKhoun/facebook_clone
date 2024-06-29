import 'package:flutter/material.dart';
import 'package:project/layouts/my_bottom_nagivation_bar.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Feeds Screen')],
        ),
      ),
    );
  }
}
