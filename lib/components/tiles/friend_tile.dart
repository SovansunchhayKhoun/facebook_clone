import 'package:flutter/material.dart';
import 'package:project/components/buttons/my_text_button.dart';
import 'package:project/screens/avatar.dart';

class FriendTile extends StatelessWidget {
  const FriendTile({super.key});

  final String profileImg =
      'https://www.siliconera.com/wp-content/uploads/2023/09/image-via-gege-akutami-shueisha-and-toho-animation-2.jpeg';

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        Avatar(
          img: profileImg,
          size: 95,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'User 101',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: MyTextButton(
                      text: Text(
                        'Add friend',
                        style: TextStyle(
                            fontSize: 14,
                            color: colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold),
                      ),
                      color: colorScheme.primary,
                      borderRadius: 8,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: MyTextButton(
                      text: Text(
                        'Remove',
                        style: TextStyle(
                            fontSize: 14,
                            color: colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold),
                      ),
                      color: colorScheme.surface,
                      borderRadius: 8,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
