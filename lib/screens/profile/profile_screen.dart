import 'package:flutter/material.dart';
import 'package:project/components/app_bars/profile_app_bar.dart';
import 'package:project/components/cards/post_card.dart';
import 'package:project/components/screen_widgets/profile_screen_widget.dart';
import 'package:project/layouts/my_bottom_nagivation_bar.dart';
import 'package:project/models/post.dart';
import 'package:project/screens/profile/photo_screen.dart';
import 'package:project/theme/app_size.dart';
import 'package:project/theme/base_app_color.dart';

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
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.onBackground,
      appBar: const ProfileAppBar(
        title: 'Sunchhay Khoun',
      ),
      body: NestedScrollView(
        physics: const ClampingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
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
        ],
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            _buildTabContent(context, 0),
            _buildTabContent(context, 1),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
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
      default:
        return Container(); // Placeholder
    }
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final PreferredSizeWidget _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height + 46;
  @override
  double get maxExtent => _tabBar.preferredSize.height + 46;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.onBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.paddingMd),
        child: _tabBar,
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class MyTabBar extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  State<MyTabBar> createState() => _MyTabBarState();

  @override
  Size get preferredSize => const Size.fromHeight(46);
}

class _MyTabBarState extends State<MyTabBar> {
  List<Text> tabs = const [
    Text('Posts'),
    Text('Photos'),
  ];
  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (index) {
        setState(() {});
      },
      isScrollable: true,
      controller: widget.tabController,
      tabAlignment: TabAlignment.start,
      indicatorColor: Colors.transparent,
      padding: const EdgeInsets.only(
        bottom: AppSize.paddingMd,
      ),
      tabs: [
        for (int i = 0; i < tabs.length; i++)
          _buildTab(
            context,
            tabs[i],
            i == widget.tabController.index,
          )
      ],
    );
  }

  Widget _buildTab(
    BuildContext context,
    Text text,
    bool isActive,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSize.circle,
        ),
        color: isActive ? BaseAppColor.lightBlue : Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.paddingMd,
      ),
      child: Tab(
        child: text,
      ),
    );
  }
}
