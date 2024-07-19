import 'package:flutter/material.dart';
import 'package:project/theme/app_size.dart';

class CircleContainer extends StatelessWidget {
  final Widget widget;
  const CircleContainer({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        AppSize.circle,
      ),
      child: widget,
    );
  }
}
