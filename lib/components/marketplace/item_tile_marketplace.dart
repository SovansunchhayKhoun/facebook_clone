import 'package:flutter/material.dart';
import 'package:project/screens/marketplace/item_detail_screen.dart';

class ItemTile extends StatelessWidget {
  final int index;

  const ItemTile(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ItemDetailScreen()));
      },
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://imageio.forbes.com/specials-images/imageserve/6064b148afc9b47d022718d1/Hennessey-Venom-F5/960x0.jpg?height=473&width=711&fit=bounds',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                Text(
                  "\$ 2,800",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  " . ",
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: Text(
                    'Genisis Coupsssssse',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
