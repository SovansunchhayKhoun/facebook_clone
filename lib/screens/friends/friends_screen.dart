import 'package:flutter/material.dart';
import 'package:project/components/buttons/my_text_button.dart';
import 'package:project/components/tiles/friend_tile.dart';
import 'package:project/layouts/app_bar.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: const MyAppBar(title: 'Friends'),
        backgroundColor: colorScheme.onBackground,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      MyTextButton(
                          text: Text(
                            'Friend requests',
                            style: TextStyle(
                                color: colorScheme.inversePrimary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          backgroundColor: colorScheme.surface),
                      const SizedBox(width: 12),
                      MyTextButton(
                          text: Text(
                            'Your friends',
                            style: TextStyle(
                                color: colorScheme.inversePrimary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          backgroundColor: colorScheme.surface),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'People you may know',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 12),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // padding: const EdgeInsets.symmetric(vertical: 4),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 24),
                      child: FriendTile(),
                    );
                  },
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
