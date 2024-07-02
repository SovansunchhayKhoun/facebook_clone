import 'package:flutter/material.dart';

Widget buildStoryItem(String name, String storyImageUrl, bool isAddStory,
    [String? profileUrl]) {
  return Container(
    width: 120,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.network(
                storyImageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
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
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),

        // --- For Profile Image ---
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
          
        if(isAddStory)
          const Positioned(
            left: 8,
            right: 8,
            bottom: 8,
            child: Center(
              child: Text(
              "Create story",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            )
          ),
      ],
    ),
  );
}
