import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;

  final TextEditingController controller;

  const CustomTextInput(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
            filled: true,
            fillColor: colorScheme.onBackground,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Border radius
              borderSide: BorderSide(
                  color: colorScheme
                      .surface), // Border color, can be transparent for no color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Border radius
              borderSide: BorderSide(
                  color: colorScheme.surface), // Border color on focus
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14)),
      ),
    );
  }
}
