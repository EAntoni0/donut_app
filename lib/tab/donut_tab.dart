import 'package:flutter/material.dart';
import 'package:donut_app/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  final List donutOnSale = [
    ["Chocolate", "100", Colors.brown, "Lib/images/chocolate_donut.png", "StarBucks"],
    ["Strawberry", "89", Colors.red, "Lib/images/strawberry_donut.png", "KrispyKreme"],
    ["Grape", "95", Colors.amber, "Lib/images/grape_donut.png", "Dunkin'"],
    ["Ice Cream", "30", Colors.brown, "Lib/images/icecream_donut.png", "Oxxo"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,       // número de columnas
        childAspectRatio: 1 / 1.4,     // proporción de cada celda
      ),
      itemCount: donutOnSale.length, // 👈 MUY IMPORTANTE
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          imagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      },
    );
  }
}
