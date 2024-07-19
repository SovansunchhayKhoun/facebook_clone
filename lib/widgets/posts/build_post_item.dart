import 'package:flutter/material.dart';
import 'package:project/models/post.dart';
import 'package:project/widgets/action_buttons.dart';

Widget buildPostItem(Post post, ColorScheme colorScheme) {
  return Container(
    color: colorScheme.surface,
    margin: const EdgeInsets.only(top: 5),
    padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
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
        ActionButtons(colorScheme: colorScheme)
      ],
    ),
  );
}
