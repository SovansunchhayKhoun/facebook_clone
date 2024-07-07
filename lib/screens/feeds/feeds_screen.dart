import 'package:flutter/material.dart';
import 'package:project/widgets/posts/build_input_section.dart';
import 'package:project/widgets/posts/build_post_feeds.dart';
import 'package:project/widgets/stories/build_story_section.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String ownProfile =
        'https://i.pinimg.com/736x/64/81/22/6481225432795d8cdf48f0f85800cf66.jpg';

    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.onBackground,
        body: SingleChildScrollView(
      child: Column(
        children: [
          buildInputSection(ownProfile, colorScheme),
          buildStorySection(colorScheme),
          buildPostFeeds(colorScheme, ownProfile),
          buildPostFeeds(colorScheme, ownProfile)
        ],
      ),
    ));
  }
}
