import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/models/post.dart';
import 'package:project/theme/app_size.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final bool? isShared;
  const PostCard({
    super.key,
    required this.post,
    this.isShared = false,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    if (isShared == true) {
      return Container(
        color: colorScheme.onBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPostHeader(
              context,
              profilePic:
                  'https://www.siliconera.com/wp-content/uploads/2023/09/image-via-gege-akutami-shueisha-and-toho-animation-2.jpeg',
              timeAgo: post.timeAgo,
              username: "Sunchhay Khoun",
            ),
            Flex(
              direction: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.paddingMd,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: colorScheme.surface,
                      ),
                    ),
                    child: Column(
                      children: [
                        _buildPostHeader(
                          context,
                          profilePic: post.ownProfile,
                          timeAgo: post.timeAgo,
                          username: post.username,
                          hideHoriz: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(AppSize.paddingSm),
                          child: Text(post.caption),
                        ),
                      ],
                    ),
                  ),
                ),
                if (post.postImageUrl != null) ...[
                  Image.network(post.postImageUrl ?? 'http://example.com'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.paddingMd,
                    ),
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: colorScheme.surface,
                        ),
                      ),
                    ),
                  ),
                ],
                _buildPostFooter(context),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container(
        color: colorScheme.onBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPostHeader(
              context,
              profilePic:
                  'https://www.siliconera.com/wp-content/uploads/2023/09/image-via-gege-akutami-shueisha-and-toho-animation-2.jpeg',
              timeAgo: post.timeAgo,
              username: "Sunchhay Khoun",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.paddingMd,
              ),
              child: Text(post.caption),
            ),
            const SizedBox(height: 8),
            if (post.postImageUrl != null)
              Image.network(post.postImageUrl ?? 'http://example.com'),
            _buildPostFooter(context),
          ],
        ),
      );
    }
  }

  Widget _buildPostFooter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppSize.paddingSm,
        left: AppSize.paddingSm,
        right: AppSize.paddingSm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () => print('Like button pressed'),
            icon: const Icon(LucideIcons.thumbsUp, size: 16),
            label: const Text('Like'),
          ),
          TextButton.icon(
            onPressed: () => print('Comment button pressed'),
            icon: const Icon(LucideIcons.messageCircle, size: 16),
            label: const Text('Comment'),
          ),
          TextButton.icon(
            onPressed: () => print('Share button pressed'),
            icon: const Icon(Icons.reply, size: 16),
            label: const Text('Share'),
          ),
        ],
      ),
    );
  }

  Widget _buildPostHeader(
    BuildContext context, {
    required String username,
    required String timeAgo,
    required String profilePic,
    bool hideHoriz = false,
  }) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profilePic),
      ),
      title: Text(
        username,
        style: textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            timeAgo,
            style: textTheme.bodySmall!.copyWith(
              color: colorScheme.surface,
            ),
          ),
          const SizedBox(
            width: AppSize.spaceSm,
          ),
          Text(
            '⋅',
            style: textTheme.bodyMedium!.copyWith(
              color: colorScheme.surface,
            ),
          ),
          const SizedBox(
            width: AppSize.spaceSm,
          ),
          Icon(
            Icons.public,
            size: 12,
            color: colorScheme.surface,
          ),
        ],
      ),
      trailing: !hideHoriz
          ? Icon(
              Icons.more_horiz,
              color: colorScheme.surface,
            )
          : const Icon(null),
    );
  }
}
