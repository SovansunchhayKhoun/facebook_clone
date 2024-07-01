import 'package:flutter/material.dart';
import 'package:project/models/post.dart';

Widget buildPostItem(Post post, ColorScheme colorScheme) {
  return Container(
    color: colorScheme.secondary,
    margin: const EdgeInsets.only(top: 20, bottom: 20),
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(post.ownProfile),
          ),
          title: Text(post.username),
          subtitle: Row(
            children: [
              Text(post.timeAgo),
              const SizedBox(width: 4),
              const Icon(Icons.public, size: 12),
            ],
          ),
          trailing: const Icon(Icons.more_horiz),
        ),
        Text(post.caption),
        const SizedBox(height: 8),
        Image.network(post.postImageUrl),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
                onPressed: () => print('Like button pressed'),
                icon: const Icon(Icons.thumb_up_alt_outlined, size: 16),
                label: const Text('Like')),
            TextButton.icon(
                onPressed: () => print('Comment button pressed'),
                icon: const Icon(Icons.comment_outlined, size: 16),
                label: const Text('Comment')),
            TextButton.icon(
                onPressed: () => print('Share button pressed'),
                icon: const Icon(Icons.share_outlined, size: 16),
                label: const Text('Share')),
          ],
        )
      ],
    ),
  );
}
