import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/components/app_bars/profile_app_bar.dart';
import 'package:project/components/buttons/custom_icon_button.dart';
import 'package:project/components/inputs/send_message_input.dart';
import 'package:project/screens/avatar.dart';
import 'package:project/screens/profile/profile_screen.dart';
import 'package:project/theme/text_theme.dart';

const String coverImg =
    'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=60,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/08/04/jujutsu-kaisen-season-2-satoru-gojo.jpeg';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const ProfileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              coverImg,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('nb 650', style: textTheme.headlineMedium),
                  Text('\$1', style: textTheme.bodyLarge),
                  Text(
                    'Trade Streetwear Phnom Penh',
                    style: textTheme.bodySmall!.copyWith(
                      color: colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const SendMessageInput(),
                  const SizedBox(height: 18),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(
                          icon: LucideIcons.coins, text: 'Send offer'),
                      CustomIconButton(
                          icon: LucideIcons.messageSquare, text: 'View post'),
                      CustomIconButton(
                          icon: Icons.share_rounded, text: 'Share'),
                      CustomIconButton(icon: LucideIcons.heart, text: 'Save'),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Divider(color: colorScheme.tertiary, thickness: 0.5),
                  _description(context),
                  Divider(color: colorScheme.tertiary, thickness: 0.5),
                  _sellerInformation(context),
                  Divider(color: colorScheme.tertiary, thickness: 0.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _description(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Description',
        style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
      ),
      const Text('dm for more pics'),
      const Text('8x\$'),
    ],
  );
}

Widget _sellerInformation(BuildContext context) {
  ColorScheme colorScheme = Theme.of(context).colorScheme;

  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Seller information',
            style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            },
            child: Text(
              "Seller details",
              style: TextStyle(
                  fontSize: 18,
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Avatar(img: coverImg),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oudommony',
                    style: textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text('Joined Facebook in 2017', style: textTheme.bodySmall),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
