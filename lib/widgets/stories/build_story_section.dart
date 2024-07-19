import 'package:flutter/material.dart';
import 'package:project/widgets/stories/build_story_item.dart';

Widget buildStorySection(ColorScheme colorScheme) {
  String addStoryImageUrl =
      'lib/assets/images/panha.png';
  String storyImageUrl =
      'lib/assets/images/wat_phnom.jpg';
  String storyImageUrl1 =
      'lib/assets/images/palace.jpg';
  String storyProfileUrl1 =
      'lib/assets/images/chhay.png';
  String storyProfileUrl2 =
      'lib/assets/images/pong.png';

  return Container(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
      color: colorScheme.surface,
      child: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildStoryItem('', addStoryImageUrl, true),
            buildStoryItem(
                'Sovansunchhay Khoun', storyImageUrl, false, storyProfileUrl1),
            buildStoryItem(
                'Ormreth Rethtihpong Em', storyImageUrl1, false, storyProfileUrl2),
          ],
        ),
      ));
}
