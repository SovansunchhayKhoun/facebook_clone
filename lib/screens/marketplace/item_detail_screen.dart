import 'package:flutter/material.dart';
import 'package:project/layouts/app_bar.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item Detail Page'),
          ],
        ),
      ),
    );
  }
}
