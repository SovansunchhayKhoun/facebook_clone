import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final Text text;
  final Color color;
  final double? borderRadius;
  final void Function()? onPressed;

  const MyTextButton({
    super.key,
    required this.text,
    required this.color,
    this.onPressed,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10000),
        )),
      ),
      child: text,
    );
  }
}
