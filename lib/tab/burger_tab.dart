import 'package:flutter/material.dart';
import 'package:donut_app/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAddToCart; // 👈 recibe función del HomePage

  BurgerTab({super.key, required this.onAddToCart});

  final List burgerOnSale = [
    ["Cheeseburger", "150", Colors.yellow, "lib/images/burgers/cheeseburger.png", "McDonald's"],
    ["Costi Burger", "120", Colors.orange, "lib/images/burgers/costiburger.png", "Burger King"],
    ["Bacon Burger", "180", Colors.red, "lib/images/burgers/baconburger.png", "Wendy's"],
    ["Mushroom Burger", "160", Colors.green, "lib/images/burgers/gurmetburger.png", "Five Guys"],
    ["Cheeseburger", "150", Colors.yellow, "lib/images/burgers/cheeseburger.png", "McDonald's"],
    ["Costi Burger", "120", Colors.orange, "lib/images/burgers/costiburger.png", "Burger King"],
    ["Bacon Burger", "180", Colors.red, "lib/images/burgers/baconburger.png", "Wendy's"],
    ["Mushroom Burger", "160", Colors.green, "lib/images/burgers/gurmetburger.png", "Five Guys"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,       // número de columnas
        childAspectRatio: 1 / 1.4,     // proporción de cada celda
      ),
      itemCount: burgerOnSale.length,
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerName: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColor: burgerOnSale[index][2],
          imagePath: burgerOnSale[index][3],
          burgerProvider: burgerOnSale[index][4],
          onAddToCart: () {
            double price = double.parse(burgerOnSale[index][1]);
            onAddToCart(price); // 👈 suma al carrito
          },
        );
      },
    );
  }
}
