import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/components/buttons/my_text_button.dart';
import 'package:project/components/buttons/profile_button.dart';
import 'package:project/components/cards/friend_card.dart';
import 'package:project/screens/avatar.dart';
import 'package:project/screens/profile/photo_screen.dart';
import 'package:project/screens/profile/profile_detail_screen.dart';
import 'package:project/theme/app_size.dart';
import 'package:project/theme/text_theme.dart';

class ProfileScreenWidget {
  final String coverImg =
      'https://www.dexerto.com/cdn-cgi/image/width=3840,quality=60,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/08/04/jujutsu-kaisen-season-2-satoru-gojo.jpeg';
  final String profileImg =
      'https://www.siliconera.com/wp-content/uploads/2023/09/image-via-gege-akutami-shueisha-and-toho-animation-2.jpeg';

  Widget getBuildUserFriends(BuildContext context) =>
      _buildUserFriends(context);

  Widget _buildUserFriends(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    const String img =
        'https://i.pinimg.com/736x/fc/ce/92/fcce92b6dd2ebb5259426a424a6f983d.jpg';
    return Flex(
      direction: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.paddingMd,
          ),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.inversePrimary,
                        ),
                      ),
                      Text(
                        '469 friends',
                        style: textTheme.bodySmall!.copyWith(
                          color: colorScheme.surface,
                        ),
                      ),
                    ],
                  ),

                  // Right
                  Text(
                    'Find Friends',
                    style: textTheme.bodyMedium!.copyWith(
                      color: colorScheme.primary,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.spaceMd,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: AppSize.spaceLg,
                  crossAxisSpacing: AppSize.spaceLg,
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  return FriendCard(
                    img: img,
                    text: Text(
                      'Sukuna',
                      style: textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
              MyTextButton(
                text: Text(
                  'See all friends',
                  style: textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: colorScheme.inversePrimary,
                  ),
                ),
                borderRadius: AppSize.roundedSm,
                backgroundColor: colorScheme.surface,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getBuildPostActions(BuildContext context) =>
      _buildPostActions(context);
  Widget _buildPostActions(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Flex(
      direction: Axis.vertical,
      children: [
        _buildPostStatus(context),
        const SizedBox(
          height: AppSize.spaceLg,
        ),
        _buildVideoChips(context),
        const SizedBox(
          height: AppSize.spaceLg,
        ),
        ListTile(
          title: MyTextButton(
            onPressed: () {},
            backgroundColor: colorScheme.surface,
            icon: Icon(
              Icons.photo,
              color: colorScheme.inversePrimary,
            ),
            text: Text(
              'Manage posts',
              style: textTheme.bodySmall!.copyWith(
                color: colorScheme.inversePrimary,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildVideoChips(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 1,
            color: colorScheme.surface,
          ),
        ),
        color: colorScheme.surface,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMd,
        vertical: AppSize.paddingSm,
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          MyTextButton(
            icon: const Icon(
              LucideIcons.tv,
              color: Colors.red,
            ),
            borderSide: BorderSide(
              color: colorScheme.background,
              width: 1,
            ),
            text: Text(
              'Reel',
              style: TextStyle(
                color: colorScheme.inversePrimary,
              ),
            ),
            backgroundColor: colorScheme.onBackground,
          ),
          const SizedBox(
            width: AppSize.spaceLg,
          ),
          MyTextButton(
            borderSide: BorderSide(
              color: colorScheme.background,
              width: 1,
            ),
            icon: const Icon(
              LucideIcons.video,
              color: Colors.red,
            ),
            text: Text(
              'Live',
              style: TextStyle(
                color: colorScheme.inversePrimary,
              ),
            ),
            backgroundColor: colorScheme.onBackground,
          ),
        ],
      ),
    );
  }

  Widget _buildPostStatus(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    const String fbImgIcon = 'lib/assets/icons/fb-image-icon.png';
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMd,
        vertical: AppSize.paddingSm,
      ),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: [
              Text(
                'Posts',
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Filters',
                style: textTheme.bodyMedium!.copyWith(
                  color: colorScheme.primary,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.spaceLg,
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flex(
                direction: Axis.horizontal,
                children: [
                  Avatar(
                    size: 40,
                  ),
                  SizedBox(
                    width: AppSize.spaceMd,
                  ),
                  Text('What\'s on your mind?'),
                ],
              ),
              Image.asset(fbImgIcon),
            ],
          )
        ],
      ),
    );
  }

  Widget getBuildSectionDivider(BuildContext context) =>
      _buildSectionDivider(context);
  Widget _buildSectionDivider(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Divider(
      thickness: 4,
      height: 0,
      color: colorScheme.background,
    );
  }

  Widget getBuildUserDetails(BuildContext context) =>
      _buildUserDetails(context);
  Widget _buildUserDetails(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileDetail()),
            );
          },
          title: Row(
            children: [
              const Icon(Icons.more_horiz),
              const SizedBox(
                width: AppSize.spaceMd,
              ),
              Text(
                'See your About info',
                style: textTheme.bodyMedium!,
              )
            ],
          ),
        ),
        ListTile(
          title: MyTextButton(
            onPressed: () {},
            borderRadius: AppSize.roundedSm,
            text: const Text('Edit public details'),
            backgroundColor: Color.fromRGBO(
              colorScheme.primary.red,
              colorScheme.primary.green,
              colorScheme.primary.blue,
              0.1,
            ),
          ),
        ),
      ],
    );
  }

  Widget getBuildTabBar(
    BuildContext context,
    TabController tabController,
  ) =>
      _buildTabBar(context, tabController);

  Widget _buildTabBar(
    BuildContext context,
    TabController tabController,
  ) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Color textBtnColor = Color.fromRGBO(
      colorScheme.primary.red,
      colorScheme.primary.green,
      colorScheme.primary.blue,
      0.1,
    );
    return TabBar(
      controller: tabController,
      tabs: [
        MyTextButton(
          backgroundColor: textBtnColor,
          onPressed: () {},
          text: const Text('Posts'),
        ),
        const SizedBox(
          width: AppSize.spaceMd,
        ),
        MyTextButton(
          backgroundColor: textBtnColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PhotoScreen(),
              ),
            );
          },
          text: const Text('Photos'),
        ),
        const SizedBox(
          width: AppSize.spaceMd,
        ),
        MyTextButton(
          backgroundColor: textBtnColor,
          onPressed: () {},
          text: const Text('Reels'),
        ),
      ],
    );
    // return Container(
    //   padding: const EdgeInsets.symmetric(
    //     horizontal: AppSize.paddingMd,
    //   ),
    //   child: Row(
    //     children: [
    //       MyTextButton(
    //         backgroundColor: textBtnColor,
    //         onPressed: () {},
    //         text: const Text('Posts'),
    //       ),
    //       const SizedBox(
    //         width: AppSize.spaceMd,
    //       ),
    //       MyTextButton(
    //         backgroundColor: textBtnColor,
    //         onPressed: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => PhotoScreen(),
    //             ),
    //           );
    //         },
    //         text: const Text('Photos'),
    //       ),
    //       const SizedBox(
    //         width: AppSize.spaceMd,
    //       ),
    //       MyTextButton(
    //         backgroundColor: textBtnColor,
    //         onPressed: () {},
    //         text: const Text('Reels'),
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget getBuildProfileButtons(BuildContext context) =>
      _buildProfileButtons(context);
  Widget _buildProfileButtons(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProfileButton(
            icon: const Icon(
              LucideIcons.plus,
              color: Colors.white,
            ),
            text: "Add to story",
            backgroundColor: colorScheme.primary,
            textColor: Colors.white,
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
            backgroundColor: colorScheme.surface,
            textColor: colorScheme.inversePrimary,
          ),
          const SizedBox(
            width: AppSize.spaceMd,
          ),
          ProfileButton(
            backgroundColor: colorScheme.surface,
            icon: Icon(
              Icons.more_horiz,
              color: colorScheme.inversePrimary,
            ),
            textColor: colorScheme.inversePrimary,
          )
        ],
      ),
    );
  }

  Widget getBuildUserName(BuildContext context) => _buildUserName(context);
  Widget _buildUserName(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sunchhay Khoun',
          style: textTheme.headlineMedium,
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: colorScheme.inversePrimary,
            ),
            children: const [
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

  Widget getBuildUserProfile(BuildContext context) =>
      _buildUserProfile(context);
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
                    color: colorScheme.onBackground,
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
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSize.circle),
        border: Border.all(
          color: colorScheme.onBackground,
          width: 2,
        ),
      ),
      child: IconButton(
        icon: const Icon(
          Icons.camera_alt,
        ),
        onPressed: () {},
      ),
    );
  }
}
