import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/models/post.dart';

Widget buildPostItem(Post post, ColorScheme colorScheme) {
  return Container(
    color: colorScheme.surface,
    margin: const EdgeInsets.only(top: 5),
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(post.ownProfile)),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(post.username),
                    Row(
                      children: [
                        Text(post.timeAgo),
                        const SizedBox(width: 12),
                        const Icon(Icons.public)
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(post.caption),
        ),
        const SizedBox(height: 8),
        Image.network(post.postImageUrl),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
                // ignore: avoid_print
                onPressed: () => print('Like button pressed'),
                icon: Icon(
                  LucideIcons.thumbsUp,
                  size: 16,
                  color: colorScheme.inversePrimary,
                ),
                label: Text('Like',
                    style: TextStyle(color: colorScheme.inversePrimary))),
            TextButton.icon(
                // ignore: avoid_print
                onPressed: () => print('Comment button pressed'),
                icon: Icon(LucideIcons.messageCircle,
                    size: 16, color: colorScheme.inversePrimary),
                label: Text('Comment',
                    style: TextStyle(color: colorScheme.inversePrimary))),
            TextButton.icon(
                // ignore: avoid_print
                onPressed: () => print('Share button pressed'),
                icon: Icon(LucideIcons.forward,
                    size: 16, color: colorScheme.inversePrimary),
                label: Text('Share',
                    style: TextStyle(color: colorScheme.inversePrimary))),
          ],
        )
      ],
    ),
  );
}
