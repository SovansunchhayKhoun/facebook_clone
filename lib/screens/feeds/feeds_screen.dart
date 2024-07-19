import 'package:flutter/material.dart';
import 'package:project/widgets/posts/build_input_section.dart';
import 'package:project/widgets/posts/build_post_feeds.dart';
import 'package:project/widgets/stories/build_story_section.dart';

class FeedsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String ownProfile =
        'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8';

    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.onBackground,
        body: SingleChildScrollView(
      child: Column(
        children: [
          buildInputSection(ownProfile, colorScheme),
          buildStorySection(colorScheme),
          buildPostFeeds(_scaffoldKey, colorScheme),
          // buildPostFeeds(_scaffoldKey, colorScheme)
        ],
      ),
    ));
  }
}
