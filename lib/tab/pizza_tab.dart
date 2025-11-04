import 'package:donut_app/utils/pizza_tile.dart';
import 'package:flutter/material.dart';


class PizzaTab extends StatelessWidget {
  final Function(double) onAddToCart; // 👈 recibe función del HomePage

  PizzaTab({super.key, required this.onAddToCart});

  final List pizzaOnSale = [
    ["Margherita Pizza", "100", Colors.green, "lib/images/pizzas/vegetalpizza.png", "Domino's"],
    ["Pepperoni Pizza", "89", Colors.red, "lib/images/pizzas/peperonipizza.png", "Pizza Hut"],
    ["Chorrizo Pizza", "95", Colors.brown, "lib/images/pizzas/chorrizopizza.png", "Little Caesars"],
    ["Cheese Pizza", "30", Colors.yellow, "lib/images/pizzas/cheesepizza.png", "Papa John's"],
    ["Margherita Pizza", "100", Colors.green, "lib/images/pizzas/vegetalpizza.png", "Domino's"],
    ["Pepperoni Pizza", "89", Colors.red, "lib/images/pizzas/peperonipizza.png", "Pizza Hut"],
    ["Chorrizo Pizza", "95", Colors.brown, "lib/images/pizzas/chorrizopizza.png", "Little Caesars"],
    ["Cheese Pizza", "30", Colors.yellow, "lib/images/pizzas/cheesepizza.png", "Papa John's"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,       // número de columnas
        childAspectRatio: 1 / 1.4,     // proporción de cada celda
      ),
      itemCount: pizzaOnSale.length, //
      itemBuilder: (context, index) {
        return PizzaTile(
          pizza: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          imagePath: pizzaOnSale[index][3],
          pizzaProvider: pizzaOnSale[index][4],
          onAddToCart: () {
            double price = double.parse(pizzaOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
