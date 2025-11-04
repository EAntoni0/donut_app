import 'package:donut_app/utils/pancake_tile.dart';
import 'package:flutter/material.dart';


class PancakeTab extends StatelessWidget {
  final Function(double) onAddToCart; // 👈 recibe función del HomePage

  PancakeTab({super.key, required this.onAddToCart});

  final List pancakeOnSale = [
    ["Apple pancakes", "100", Colors.green, "lib/images/pancakes/applepancake.png", "StarBucks"],
    ["Strawberry pancakes", "89", Colors.red, "lib/images/pancakes/strawberrypancake.png", "KrispyKreme"],
    ["Grape pancakes", "95", Colors.brown, "lib/images/pancakes/grapepancake.png", "Dunkin'"],
    ["Ice Cream pancakes", "30", Colors.yellow, "lib/images/pancakes/icecreampancake.png", "Oxxo"],
    ["Apple pancakes", "100", Colors.green, "lib/images/pancakes/applepancake.png", "StarBucks"],
    ["Strawberry pancakes", "89", Colors.red, "lib/images/pancakes/strawberrypancake.png", "KrispyKreme"],
    ["Grape pancakes", "95", Colors.brown, "lib/images/pancakes/grapepancake.png", "Dunkin'"],
    ["Ice Cream pancakes", "30", Colors.yellow, "lib/images/pancakes/icecreampancake.png", "Oxxo"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,       // número de columnas
        childAspectRatio: 1 / 1.4,     // proporción de cada celda
      ),
      itemCount: pancakeOnSale.length, //
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          imagePath: pancakeOnSale[index][3],
          pancakeProvider: pancakeOnSale[index][4],
          onAddToCart: () {
            double price = double.parse(pancakeOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
