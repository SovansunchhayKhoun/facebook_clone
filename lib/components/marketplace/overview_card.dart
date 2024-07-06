import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String data;
  final IconData? icon;
  final String description;
  final String? subtext;

  const OverviewCard(
      {super.key,
      required this.data,
      this.icon,
      required this.description,
      this.subtext});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
          border: Border.all(color: colorScheme.tertiary),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data,
                style:
                    const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              Icon(
                icon,
                size: 26,
              ),
            ],
          ),
          Expanded(
            child: Text(
              description,
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.visible),
            ),
          ),
          Expanded(
            child: Text(
              subtext ?? '',
              style: TextStyle(
                  fontSize: 13,
                  overflow: TextOverflow.ellipsis,
                  color: colorScheme.tertiary),
            ),
          ),
        ],
      ),
    );
  }
}
