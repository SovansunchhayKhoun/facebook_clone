import 'package:flutter/material.dart';
import 'package:project/screens/video/video_player.dart';
import 'package:project/widgets/action_buttons.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
      body: Column(
        children: [
          Container(
            color: colorScheme.onBackground,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'For you'),
                Tab(text: 'Live'),
                Tab(text: 'Following'),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.blue,
              indicatorWeight: 3.0,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                buildVideoPage(
                    context,
                    'Rattanakpanha Kong',
                    'lib/assets/images/panha.png',
                    'Jul 11',
                    'Peace Mind',
                    'Lz-U9N6R-uw'),
                buildVideoPage(
                    context,
                    'Sovansunchhay Khoun',
                    'lib/assets/images/chhay.png',
                    'Live now',
                    'Let\'s study with me !',
                    'GEKLmXNUFaE'),
                // const Center(child: Text('Live Content')),
                const Center(child: Text('Following Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildVideoPage(context, String user, String profileUrl, String time,
      String caption, String videoId) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Container(
        color: colorScheme.onBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(profileUrl),
              ),
              title: Text(user),
              subtitle: Text(time),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  //
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(caption),
              ),
            ),
            VideoPlayer(videoId: videoId),
            ActionButtons(colorScheme: colorScheme)
          ],
        ),
      ),
    );
  }
}
