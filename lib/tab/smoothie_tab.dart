import 'package:donut_app/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';


class SmoothieTab extends StatelessWidget {
  final Function(double) onAddToCart; // 👈 recibe función del HomePage

  SmoothieTab({super.key, required this.onAddToCart});

  final List smoothieOnSale = [
    ["Apple smoothie", "100", Colors.green, "lib/images/smoothies/applesmoothie.png", "StarBucks"],
    ["Strawberry smoothie", "89", Colors.red, "lib/images/smoothies/strawberrysmoothie.png", "KrispyKreme"],
    ["Grape smoothie", "95", Colors.brown, "lib/images/smoothies/grapesmoothie.png", "Dunkin'"],
    ["Watermelon smoothie", "30", Colors.yellow, "lib/images/smoothies/watermelonsmoothie.png", "Oxxo"],
    ["Apple smoothie", "100", Colors.green, "lib/images/smoothies/applesmoothie.png", "StarBucks"],
    ["Strawberry smoothie", "89", Colors.red, "lib/images/smoothies/strawberrysmoothie.png", "KrispyKreme"],
    ["Grape smoothie", "95", Colors.brown, "lib/images/smoothies/grapesmoothie.png", "Dunkin'"],
    ["Watermelon smoothie", "30", Colors.yellow, "lib/images/smoothies/watermelonsmoothie.png", "Oxxo"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,       // número de columnas
        childAspectRatio: 1 / 1.4,     // proporción de cada celda
      ),
      itemCount: smoothieOnSale.length, //
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieColor: smoothieOnSale[index][2],
          imagePath: smoothieOnSale[index][3],
          smoothieProvider: smoothieOnSale[index][4],
          onAddToCart: () {
            double price = double.parse(smoothieOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
