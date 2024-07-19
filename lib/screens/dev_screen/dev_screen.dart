import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/components/circle_container.dart';
import 'package:project/layouts/app_bar.dart';
import 'package:project/theme/app_size.dart';
import 'package:project/theme/text_theme.dart';

class DevScreen extends StatelessWidget {
  const DevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String baseImgPath = 'lib/assets/dev-assets/';
    List<String> imageName = [
      'sunchhay.jpeg',
      'rethtihpong.jpeg',
      'panha.jpeg'
    ];
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildDevTile(
              context,
              imgPath: baseImgPath + imageName[0],
              text: 'Khoun Sovansunchhay',
              description: 'Student at Cambodia Academy of Digital Technology',
              group: 'A',
              major: 'Computer Science',
              id: 'IDTB080002',
            ),
            _buildDevTile(
              context,
              imgPath: baseImgPath + imageName[1],
              text: 'Em Ormreth Rethtihpong',
              description: 'Student at Cambodia Academy of Digital Technology',
              group: 'A',
              major: 'Computer Science',
              id: 'IDTB080004',
            ),
            _buildDevTile(
              context,
              imgPath: baseImgPath + imageName[2],
              text: 'Khoun Sovansunchhay',
              description: 'Student at Cambodia Academy of Digital Technology',
              group: 'B',
              major: 'Computer Science',
              id: 'IDTB080046',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDevTile(
    BuildContext context, {
    required String imgPath,
    required String text,
    required String description,
    required String group,
    required String major,
    required String id,
  }) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: AppSize.spaceSm,
        ),
        color: colorScheme.surface,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.paddingMd,
          vertical: AppSize.paddingSm,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(AppSize.circle),
              ),
              child: CircleContainer(
                widget: Image.asset(
                  imgPath,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.spaceLg,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: AppSize.spaceSm,
                ),
                SizedBox(
                  width: 320,
                  child: Text(
                    description,
                    style: textTheme.bodySmall!.copyWith(
                      color: Colors.grey,
                      height: 1.25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.spaceMd,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.secondary,
                        borderRadius: BorderRadius.circular(
                          AppSize.circle,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.paddingMd,
                      ),
                      child: Text(major),
                    ),
                    const SizedBox(
                      width: AppSize.spaceMd,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(
                          AppSize.circle,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.paddingMd,
                      ),
                      child: Text("Group: ${group}"),
                    ),
                    const SizedBox(
                      width: AppSize.spaceMd,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(
                          AppSize.circle,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.paddingMd,
                      ),
                      child: Text(id),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.telegram,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.email,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
