import 'package:flutter/material.dart';
import 'package:project/theme/app_size.dart';

class ProfileButton extends StatelessWidget {
  final String? text;
  final Color backgroundColor;
  final Icon icon;
  final Color? textColor;
  const ProfileButton({
    super.key,
    this.text,
    required this.backgroundColor,
    required this.icon,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    // ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            horizontal: AppSize.paddingMd,
            vertical: AppSize.paddingSm,
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.roundedSm),
          ),
        ),
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: AppSize.spaceMd,
          ),
          Text(
            text ?? '',
            style: textTheme.bodySmall!.copyWith(
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
