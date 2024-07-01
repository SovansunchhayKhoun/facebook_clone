import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? img;
  final double? size;
  const Avatar({
    super.key,
    this.img,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final String placeholder =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/991px-Placeholder_view_vector.svg.png';
    double imgSize = size ?? 50;

    return ClipRRect(
      borderRadius: BorderRadius.circular((imgSize) / 2),
      child: Container(
        color: Colors.white,
        child: Image.network(
          img ?? placeholder,
          width: imgSize,
          height: imgSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
