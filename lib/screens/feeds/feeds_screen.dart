import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _buildInputSection(),
          _buildStoriesSection(),
          _buildPostFeeds(),
          _buildPostFeeds()
        ],
      ),
    ));
  }
}

String ownProfile =
    'https://i.pinimg.com/736x/64/81/22/6481225432795d8cdf48f0f85800cf66.jpg';
String addStoryImageUrl =
    'https://images.unsplash.com/photo-1601758123927-6da5c7ec3816';
String storyImageUrl1 =
    'https://images.unsplash.com/photo-1543877087-ebf71f6a81a1';
String storyProfileUrl1 =
    'https://images.unsplash.com/photo-1517841905240-472988babdf9';
String storyImageUrl2 =
    'https://images.unsplash.com/photo-1535909339361-7a44cf5a61c5';
String storyProfileUrl2 =
    'https://images.unsplash.com/photo-1520072959219-c595dc870360';
String postImageUrl =
    'https://www.cktravels.com/wp-content/uploads/2023/08/seoul-guide-19.jpg';

Widget _buildInputSection() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(ownProfile),
    ),
    title: const TextField(
      decoration: InputDecoration(
        hintText: "What's on your mind?",
        border: InputBorder.none,
      ),
    ),
    trailing: const Icon(Icons.photo_library, color: Colors.green),
  );
}

Widget _buildStoriesSection() {
  return SizedBox(
    height: 200,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _buildStoryItem(
            'Create story',
            addStoryImageUrl,
            true),
        _buildStoryItem(
            'Matthew Hinkle',
            storyImageUrl1,
            false,
            storyProfileUrl1),
        _buildStoryItem(
            'Paul Pinnock',
            storyImageUrl2,
            false,
            storyProfileUrl2),
        _buildStoryItem(
            'Paul Pinnock',
            storyImageUrl2,
            false,
            storyProfileUrl2),
      ],
    ),
  );
}

Widget _buildStoryItem(String name, String imageUrl, bool isAddStory,
    [String? profileUrl]) {
  return Container(
    width: 120,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Stack(
      children: [
        if (!isAddStory && profileUrl != null)
          Positioned(
            top: 8,
            left: 8,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(profileUrl),
              ),
            ),
          ),
        if (isAddStory)
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 4,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}

Widget _buildPostFeeds() {
  return Column(
    children: [
      _buildPostItem(
        'Cassandra Taylor',
        '8h',
        'https://i.pinimg.com/736x/64/81/22/6481225432795d8cdf48f0f85800cf66.jpg',
        'A beautiful day to read and enjoy a healthy breakfast!',
      )
    ],
  );
}

Widget _buildPostItem(
    String userName, String timeAgo, String profileUrl, String content) {
  return Container(
    padding: const EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/64/81/22/6481225432795d8cdf48f0f85800cf66.jpg'),
          ),
          title: const Text('John Cena'),
          subtitle: Row(
            children: [
              Text(timeAgo),
              const SizedBox(width: 4),
              const Icon(Icons.public, size: 12),
            ],
          ),
          trailing: const Icon(Icons.more_horiz),
        ),
        Text(content),
        const SizedBox(height: 8),
        Image.network(
            'https://www.cktravels.com/wp-content/uploads/2023/08/seoul-guide-19.jpg')
      ],
    ),
  );
}