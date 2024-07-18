import 'package:flutter/material.dart';
import 'package:project/models/post.dart';
import 'package:project/widgets/posts/build_post_item.dart';

Widget buildPostFeeds(scaffoldKey, ColorScheme colorScheme, String ownProfile) {
  String postImageUrl =
      'https://www.cktravels.com/wp-content/uploads/2023/08/seoul-guide-19.jpg';

  final post = Post(
    username: 'Cassandra Taylor',
    timeAgo: '8h',
    ownProfile: ownProfile,
    caption: 'A beautiful day to read and enjoy a healthy breakfast!',
    postImageUrl: postImageUrl,
  );

  return Column(
    children: [buildPostItem(post, colorScheme)],
  );
}
