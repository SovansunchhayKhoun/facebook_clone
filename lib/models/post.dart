class Post {
  final String username;
  final String timeAgo;
  final String ownProfile;
  final String caption;
  final String? postImageUrl;

  const Post({
    required this.username,
    required this.timeAgo,
    required this.ownProfile,
    required this.caption,
    this.postImageUrl,
  });
}
