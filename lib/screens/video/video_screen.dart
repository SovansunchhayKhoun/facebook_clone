import 'package:flutter/material.dart';
import 'package:project/screens/video/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'For you'),
            Tab(text: 'Live'),
            Tab(text: 'Following'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildVideoPage(),
        ],
      ),
    );
  }

  Widget buildVideoPage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8'),
            ),
            title: const Text('Rattanakpanha Kong'),
            subtitle: const Text('Jul 11'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                //
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Be careful on wet floors'),
          ),
          const VideoPlayer(videoId: 'Lz-U9N6R-uw'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {
                  // Handle like
                },
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {
                  // Handle comment
                },
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  // Handle share
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}


