import 'package:flutter/material.dart';
import 'package:donut_app/utils/my_tab.dart';

import '../tab/donut_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/smoothie_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: "lib/icons/donut.png", label: "Donut"),
    const MyTab(iconPath: "lib/icons/burger.png", label: "Burger"),
    const MyTab(iconPath: "lib/icons/smoothie.png", label: "Smoothie"),
    const MyTab(iconPath: "lib/icons/pancakes.png", label: "Pancakes"),
    const MyTab(iconPath: "lib/icons/pizza.png", label: "Pizza"),
  ];

  int totalItems = 0;
  double totalPrice = 0.0;

  // 👇 Función para sumar productos al carrito
  void addToCart(double price) {
    setState(() {
      totalItems++;
      totalPrice += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: const [
                  Text("I want to ", style: TextStyle(fontSize: 24)),
                  Text(
                    "eat",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 17),

            TabBar(
              tabs: myTabs,
              indicator: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 3),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),

            // 👇 Las pestañas, pasando la función addToCart
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(onAddToCart: addToCart),
                  BurgerTab(onAddToCart: addToCart),
                  SmoothieTab(onAddToCart: addToCart),
                  PancakeTab(onAddToCart: addToCart),
                  PizzaTab(onAddToCart: addToCart),
                ],
              ),
            ),

            // 👇 Carrito inferior
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$totalItems Items | \$${totalPrice.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Delivery Charge Included'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {
                      // Aquí puedes abrir la vista del carrito
                    },
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
