import 'package:flutter/material.dart';
import 'package:project/components/app_bars/profile_app_bar.dart';
import 'package:project/components/buttons/my_text_button.dart';
import 'package:project/components/cards/post_card.dart';
import 'package:project/components/screen_widgets/profile_screen_widget.dart';
import 'package:project/layouts/my_bottom_nagivation_bar.dart';
import 'package:project/models/post.dart';
import 'package:project/screens/profile/photo_screen.dart';
import 'package:project/theme/app_size.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final Post userPost = const Post(
    username: 'Cassandra Taylor',
    timeAgo: '8h',
    ownProfile:
        'https://i.pinimg.com/736x/64/81/22/6481225432795d8cdf48f0f85800cf66.jpg',
    caption: 'A beautiful day to read and enjoy a healthy breakfast!',
    // postImageUrl:
    //     'https://i.pinimg.com/736x/64/81/22/6481225432795d8cdf48f0f85800cf66.jpg',
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.onBackground,
      appBar: const ProfileAppBar(
        title: 'Sunchhay Khoun',
      ),
      body: Expanded(
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ProfileScreenWidget().getBuildUserProfile(context),
                  const SizedBox(height: 50),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileScreenWidget().getBuildUserName(context),
                        const SizedBox(height: 24.0),
                        ProfileScreenWidget().getBuildProfileButtons(context),
                      ],
                    ),
                  ),
                  ProfileScreenWidget().getBuildSectionDivider(context),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                MyTabBar(
                  tabController: _tabController,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _buildTabContent(context, index);
                },
                childCount: 3, // Number of tabs
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );

    // body: SingleChildScrollView(
    //   child: LayoutBuilder(
    //     builder: (context, constraints) => Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         ProfileScreenWidget().getBuildUserProfile(context),
    //         const SizedBox(
    //           height: 50,
    //         ),
    //         Container(
    //           padding: const EdgeInsets.all(AppSize.paddingMd),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               ProfileScreenWidget().getBuildUserName(context),
    //               const SizedBox(
    //                 height: AppSize.spaceLg,
    //               ),
    //               ProfileScreenWidget().getBuildProfileButtons(context),
    //             ],
    //           ),
    //         ),
    //         Divider(
    //           height: 4,
    //           thickness: 5,
    //           color: colorScheme.surface,
    //         ),
    //         ProfileScreenWidget().getBuildSectionDivider(context),
    //         const SizedBox(
    //           height: AppSize.spaceMd,
    //         ),
    //         ProfileScreenWidget().getBuildUserButtons(context),
    //         Divider(
    //           thickness: 0.5,
    //           color: colorScheme.surface,
    //         ),
    //         ProfileScreenWidget().getBuildUserDetails(context),
    //         ProfileScreenWidget().getBuildUserFriends(context, constraints),
    //         const SizedBox(
    //           height: AppSize.spaceMd,
    //         ),
    //         Padding(
    //           padding:
    //               const EdgeInsets.symmetric(horizontal: AppSize.paddingMd),
    //           child: Divider(
    //             height: 4,
    //             thickness: 5,
    //             color: colorScheme.surface,
    //           ),
    //         ),
    //         ProfileScreenWidget().getBuildSectionDivider(context),
    //         const SizedBox(
    //           height: AppSize.spaceMd,
    //         ),
    //         ProfileScreenWidget().getBuildPostActions(context),
    //         ProfileScreenWidget().getBuildSectionDivider(context),
    //         Flex(
    //           direction: Axis.vertical,
    //           children: List.generate(
    //             4,
    //             (index) => Column(
    //               children: [
    //                 PostCard(
    //                   post: userPost,
    //                   isShared: index % 2 == 0,
    //                 ),
    //                 Divider(
    //                   color: colorScheme.background,
    //                   height: 0,
    //                   thickness: 6,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  }

  Widget _buildTabContent(BuildContext context, int index) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    switch (index) {
      case 0:
        return SingleChildScrollView(
          child: Column(
            children: [
              ProfileScreenWidget().getBuildUserDetails(context),
              ProfileScreenWidget().getBuildUserFriends(context),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(height: 4, thickness: 5),
              ),
              ProfileScreenWidget().getBuildSectionDivider(context),
              const SizedBox(height: 16.0),
              ProfileScreenWidget().getBuildPostActions(context),
              ProfileScreenWidget().getBuildSectionDivider(context),
              Flex(
                direction: Axis.vertical,
                children: List.generate(
                  4,
                  (index) => Column(
                    children: [
                      PostCard(
                        post: userPost,
                        isShared: index % 2 == 0,
                      ),
                      Divider(
                        color: colorScheme.background,
                        height: 0,
                        thickness: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      case 1:
        return const PhotoScreen();
      case 2:
        return const Center(child: Text("It's sunny here"));
      default:
        return Container(); // Placeholder
    }
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final PreferredSizeWidget _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.onBackground,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    Color textBtnColor = Color.fromRGBO(
      colorScheme.primary.red,
      colorScheme.primary.green,
      colorScheme.primary.blue,
      0.1,
    );
    return TabBar(
      isScrollable: true,
      controller: tabController,
      tabAlignment: TabAlignment.start,
      indicator: BoxDecoration(
        border: Border.all(
          width: 0,
        ),
      ),
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
          onPressed: () {},
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
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
