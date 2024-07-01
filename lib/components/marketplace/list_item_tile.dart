import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/components/marketplace/item_tile_marketplace.dart';

class ListItemTile extends StatelessWidget {
  const ListItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          childAspectRatio: 0.85,
          mainAxisSpacing: 6),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 11,
      itemBuilder: (context, index) => ItemTile(index),
    );
  }
}
