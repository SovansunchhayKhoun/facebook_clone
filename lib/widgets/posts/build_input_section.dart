import 'package:flutter/material.dart';

Widget buildInputSection(String ownProfile) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(ownProfile),
    ),
    title: TextField(
      decoration: InputDecoration(
        hintText: "What's on your mind?",
        border: OutlineInputBorder( // Use OutlineInputBorder for border
          borderRadius: BorderRadius.circular(50.0), // Set border radius
          borderSide: const BorderSide( // Customize border style
            color: Colors.grey,
          ),
        ),
      ),
    ),
    trailing: const Icon(Icons.photo_library, color: Colors.green),
  );
}
