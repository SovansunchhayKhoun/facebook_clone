import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/theme/app_size.dart';

class FriendCard extends StatelessWidget {
  final String img;
  final Text text;
  const FriendCard({
    super.key,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            AppSize.roundedMd,
          ),
          child: Image.network(
            img,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: AppSize.spaceSm,
        ),
        text,
      ],
    );
  }
}
