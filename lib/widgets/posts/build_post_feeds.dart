import 'package:flutter/material.dart';
import 'package:project/models/post.dart';
import 'package:project/widgets/posts/build_post_item.dart';

Widget buildPostFeeds(scaffoldKey, ColorScheme colorScheme) {
  const post = Post(
    username: 'Rattanakpanha Kong',
    timeAgo: '8h',
    ownProfile:
        'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    caption: 'A beautiful day to read and enjoy life!',
    postImageUrl:
        'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6c/56/f8.jpg',
  );

  const post1 = Post(
    username: 'Sovansunchhay Khoun',
    timeAgo: '12h',
    ownProfile: 'https://images.unsplash.com/photo-1517841905240-472988babdf9',
    caption: 'A beautiful day to read and enjoy life!',
    postImageUrl:
        'https://image-tc.galaxy.tf/wijpeg-6lp8rr31vfvdy41ubtpqdgihd/wat-phnom-pagoda.jpg',
  );

  const post2 = Post(
    username: 'Ormreth Rethtihpong Em',
    timeAgo: '3h',
    ownProfile: 'https://images.unsplash.com/photo-1520072959219-c595dc870360',
    caption: 'A beautiful day to read and enjoy life!',
    postImageUrl:
        'https://ucarecdn.com/77d53c3e-7964-48a1-9ce3-0085720b56d2/-/crop/4043x2122/0,265/-/resize/1200x630/-/resize/x300/',
  );

  return Column(
    children: [
      buildPostItem(post, colorScheme),
      buildPostItem(post1, colorScheme),
      buildPostItem(post2, colorScheme),
    ],
  );
}
