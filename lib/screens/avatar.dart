import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String img;
  final double? size;
  const Avatar({
    super.key,
    required this.img,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    double imgSize = size ?? 50;

    return ClipRRect(
      borderRadius: BorderRadius.circular((imgSize) / 2),
      child: Container(
        color: Colors.white,
        child: Image.network(
          img,
          width: imgSize,
          height: imgSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
