import 'package:flutter/material.dart';
import 'package:project/widgets/stories/build_story_item.dart';

Widget buildStorySection(ColorScheme colorScheme) {
  String addStoryImageUrl =
      'https://i.pinimg.com/736x/64/81/22/6481225432795d8cdf48f0f85800cf66.jpg';
  String storyImageUrl =
      'https://www.cktravels.com/wp-content/uploads/2023/08/seoul-guide-19.jpg';
  String storyProfileUrl1 =
      'https://images.unsplash.com/photo-1517841905240-472988babdf9';
  String storyProfileUrl2 =
      'https://images.unsplash.com/photo-1520072959219-c595dc870360';

  return Container(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
      color: colorScheme.surface,
      child: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildStoryItem('Create story', addStoryImageUrl, true),
            buildStoryItem(
                'Matthew Hinkle', storyImageUrl, false, storyProfileUrl1),
            buildStoryItem(
                'Paul Pinnock', storyImageUrl, false, storyProfileUrl2),
          ],
        ),
      ));
}
