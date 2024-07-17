import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/theme/app_size.dart';
import 'package:project/theme/text_theme.dart';

class SendMessageInput extends StatelessWidget {
  const SendMessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: colorScheme.surface, borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Row(
          children: [
            const Icon(LucideIcons.messageCircle),
            const SizedBox(width: 12),
            Text(
              'Send seller a message',
              style: textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: TextField(
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: colorScheme.onBackground,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24), // Border radius
                      borderSide: const BorderSide(
                          color: Colors
                              .transparent), // Border color, can be transparent for no color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24), // Border radius
                      borderSide: const BorderSide(
                          color: Colors.transparent), // Border color on focus
                    ),
                    hintText: 'Hi Oudommony, is this still avaiable?',
                    hintStyle: const TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(width: 12),
            _sendButton(context)
          ],
        ),
      ]),
    );
  }
}

Widget _sendButton(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;
  ColorScheme colorScheme = Theme.of(context).colorScheme;

  return ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 14, horizontal: 16)),
      backgroundColor: MaterialStateProperty.all<Color>(colorScheme.primary),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.roundedSm),
        ),
      ),
    ),
    child: SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Send',
            style: textTheme.bodySmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
