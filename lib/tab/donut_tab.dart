import 'package:flutter/material.dart';
import 'package:donut_app/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAddToCart; // 👈 recibe función del HomePage

  const DonutTab({super.key, required this.onAddToCart});

  final List donutOnSale = const [
    ["Chocolate", "100", Colors.brown, "lib/images/donuts/chocolate_donut.png", "StarBucks"],
    ["Strawberry", "89", Colors.red, "lib/images/donuts/strawberry_donut.png", "KrispyKreme"],
    ["Grape", "95", Colors.blue, "lib/images/donuts/grape_donut.png", "Dunkin'"],
    ["Ice Cream", "30", Colors.brown, "lib/images/donuts/icecream_donut.png", "Oxxo"],
    ["Chocolate", "100", Colors.brown, "lib/images/donuts/chocolate_donut.png", "StarBucks"],
    ["Strawberry", "89", Colors.red, "lib/images/donuts/strawberry_donut.png", "KrispyKreme"],
    ["Grape", "95", Colors.blue, "lib/images/donuts/grape_donut.png", "Dunkin'"],
    ["Ice Cream", "30", Colors.brown, "lib/images/donuts/icecream_donut.png", "Oxxo"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
      ),
      itemCount: donutOnSale.length,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          imagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
          onAddToCart: () {
            double price = double.parse(donutOnSale[index][1]);
            onAddToCart(price); // 👈 suma al carrito
          },
        );
      },
    );
  }
}
