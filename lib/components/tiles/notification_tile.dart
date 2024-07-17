import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/screens/avatar.dart';
import 'package:project/theme/base_app_color.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key, this.onTap, this.isNew});

  final void Function()? onTap;
  final bool? isNew;

  final String profileImg =
      'https://www.siliconera.com/wp-content/uploads/2023/09/image-via-gege-akutami-shueisha-and-toho-animation-2.jpeg';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        color: isNew != null ? BaseAppColor.lightBlue : Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Avatar(
                    img: profileImg,
                    size: 95,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Brent Rivera posted a new video :',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.clip),
                        ),
                        Text(
                          'How to get a free meal?',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          '5h',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Icon(LucideIcons.moreHorizontal, size: 32)
          ],
        ),
      ),
    );
  }
}
