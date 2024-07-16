import 'package:flutter/material.dart';
import 'package:project/layouts/app_bar.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text('Photos'),
      ),
    );
  }
}
