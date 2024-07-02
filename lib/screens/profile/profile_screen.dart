import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/components/app_bars/profile_app_bar.dart';
import 'package:project/components/buttons/my_text_button.dart';
import 'package:project/components/buttons/profile_button.dart';
import 'package:project/layouts/my_bottom_nagivation_bar.dart';
import 'package:project/screens/avatar.dart';
import 'package:project/theme/app_size.dart';
import 'package:project/theme/text_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  final String coverImg =
      'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=60,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/08/04/jujutsu-kaisen-season-2-satoru-gojo.jpeg';
  final String profileImg =
      'https://www.siliconera.com/wp-content/uploads/2023/09/image-via-gege-akutami-shueisha-and-toho-animation-2.jpeg';
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.secondary,
      appBar: const ProfileAppBar(
        title: 'Sunchhay Khoun',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserProfile(context),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(AppSize.paddingMd),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserName(context),
                  const SizedBox(
                    height: AppSize.spaceLg,
                  ),
                  _buildProfileButtons(context),
                ],
              ),
            ),
            Divider(
              thickness: 4,
              color: colorScheme.background,
            ),
            _buildUserButtons(context),
            Divider(
              thickness: 0.5,
              color: colorScheme.tertiary,
            ),
            _buildUserDetails(context),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }

  Widget _buildUserDetails(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.vertical,
      children: [
        ListTile(
          title: Text(
            'Details',
            style: textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          title: Row(
            children: [
              const Icon(LucideIcons.home),
              const SizedBox(
                width: AppSize.spaceMd,
              ),
              RichText(
                text: TextSpan(
                  style: textTheme.bodyMedium,
                  children: const [
                    TextSpan(
                      text: 'Lives in ',
                    ),
                    TextSpan(
                      text: 'Phnom Penh',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          title: Row(
            children: [
              const Icon(Icons.more_horiz),
              const SizedBox(
                width: AppSize.spaceMd,
              ),
              Text(
                'See your About info',
                style: textTheme.bodyMedium,
              )
            ],
          ),
        ),
        MaterialButton(
          child: const Text('Btn'),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildUserButtons(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMd,
      ),
      child: Row(
        children: [
          MyTextButton(
            color: colorScheme.primary,
            onPressed: () {},
            text: 'Posts',
          ),
          const SizedBox(
            width: AppSize.spaceMd,
          ),
          MyTextButton(
            color: colorScheme.primary,
            onPressed: () {},
            text: 'Photos',
          ),
          const SizedBox(
            width: AppSize.spaceMd,
          ),
          MyTextButton(
            color: colorScheme.primary,
            onPressed: () {},
            text: 'Reels',
          ),
        ],
      ),
    );
  }

  Widget _buildProfileButtons(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProfileButton(
            icon: Icon(
              LucideIcons.plus,
              color: colorScheme.inversePrimary,
            ),
            text: "Add to story",
            backgroundColor: colorScheme.primary,
          ),
          const SizedBox(
            width: AppSize.spaceMd,
          ),
          ProfileButton(
            icon: Icon(
              LucideIcons.edit,
              color: colorScheme.inversePrimary,
            ),
            text: "Edit Profile",
            backgroundColor: colorScheme.secondary,
          ),
          const SizedBox(
            width: AppSize.spaceMd,
          ),
          ProfileButton(
            backgroundColor: colorScheme.secondary,
            icon: Icon(
              Icons.more_horiz,
              color: colorScheme.inversePrimary,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildUserName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sunchhay Khoun',
          style: textTheme.headlineMedium,
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: '470',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' friends',
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          coverImg,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 14,
          right: 14,
          child: _buildCameraIcon(context),
        ),
        Positioned(
          bottom: -50,
          left: AppSize.paddingMd,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: colorScheme.background,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Avatar(
                  img: profileImg,
                  size: 150,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: _buildCameraIcon(context),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCameraIcon(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: const Icon(
          LucideIcons.camera,
        ),
        onPressed: () {},
      ),
    );
  }
}
