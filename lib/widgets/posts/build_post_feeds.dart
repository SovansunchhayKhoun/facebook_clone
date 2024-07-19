import 'package:flutter/material.dart';
import 'package:project/models/post.dart';
import 'package:project/widgets/posts/build_post_item.dart';

Widget buildPostFeeds(scaffoldKey, ColorScheme colorScheme) {
  const post = Post(
    username: 'Rattanakpanha Kong',
    timeAgo: '8h',
    ownProfile:
        'lib/assets/images/panha.png',
    caption: 'A beautiful day to read and enjoy life!',
    postImageUrl:
        'lib/assets/images/phnom_penh.jpg',
  );

  const post1 = Post(
    username: 'Sovansunchhay Khoun',
    timeAgo: '12h',
    ownProfile: 'lib/assets/images/chhay.png',
    caption: 'A beautiful day to read and enjoy life!',
    postImageUrl:
        'lib/assets/images/wat_phnom.jpg',
  );

  const post2 = Post(
    username: 'Ormreth Rethtihpong Em',
    timeAgo: '3h',
    ownProfile: 'lib/assets/images/pong.png',
    caption: 'A beautiful day to read and enjoy life!',
    postImageUrl:
        'lib/assets/images/palace.jpg',
  );

  return Column(
    children: [
      buildPostItem(post, colorScheme),
      buildPostItem(post1, colorScheme),
      buildPostItem(post2, colorScheme),
    ],
  );
}
