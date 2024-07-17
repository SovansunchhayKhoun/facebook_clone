import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/components/marketplace/list_item_tile.dart';
import 'package:project/screens/marketplace/listing_screen.dart';

class MarketPlaceScreen extends StatelessWidget {
  const MarketPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.onBackground,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(color: colorScheme.surface)),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListingScreen()));
                          },
                          child: Text(
                            "Sell",
                            style: TextStyle(
                                fontSize: 18,
                                color: colorScheme.primary,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 16,
                          right: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(18)),
                          color: Color.fromRGBO(
                            colorScheme.primary.red,
                            colorScheme.primary.green,
                            colorScheme.primary.blue,
                            0.1,
                          ),
                        ),
                        child: Text(
                          'For you',
                          style: TextStyle(
                              fontSize: 18,
                              color: colorScheme.primary,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Today's picks",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            LucideIcons.mapPin,
                            color: colorScheme.primary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Phnom Penh',
                            style: TextStyle(
                                fontSize: 18, color: colorScheme.primary),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const ListItemTile(),
          ],
        ),
      ),
    );
  }
}
