import 'package:flutter/material.dart';
import 'package:project/theme/app_size.dart';

class MyTextButton extends StatelessWidget {
  final Text text;
  final Icon? icon;
  final Color backgroundColor;
  final double? borderRadius;
  final void Function()? onPressed;
  final BorderSide? borderSide;
  // final double? borderWidth;
  // final Color? borderColor;

  const MyTextButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.icon,
    this.onPressed,
    this.borderRadius,
    this.borderSide,
    // this.borderColor,
    // this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          side: borderSide ??
              const BorderSide(
                width: 0,
                color: Colors.transparent,
                strokeAlign: 0,
              ),
          borderRadius: BorderRadius.circular(
            borderRadius ?? AppSize.circle,
          ),
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? Container(),
          SizedBox(
            width: icon != null ? AppSize.spaceSm : 0,
          ),
          text,
        ],
      ),
    );
  }
}
