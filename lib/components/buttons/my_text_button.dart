import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onPressed;

  const MyTextButton({
    super.key,
    required this.text,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Color.fromRGBO(
            color.red,
            color.green,
            color.blue,
            0.1,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
