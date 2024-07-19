import 'package:flutter/material.dart';

Widget buildInputSection(String ownProfile, ColorScheme colorScheme) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(ownProfile),
    ),
    title: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: colorScheme.onBackground,
        hintText: "What's on your mind?",
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
    ),
    trailing: const Icon(Icons.photo_library, color: Colors.green),
  );
}