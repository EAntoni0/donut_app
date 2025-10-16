import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

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
              onPressed: () {
                // Handle menu button press
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {
                  // Handle profile button press
                },
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
                  Text("I want to", style: TextStyle(fontSize: 24)),
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
                border: Border.all(
                  color: Colors.black, // color del borde
                  width: 3,           // grosor
                ),

              ),
              indicatorSize: TabBarIndicatorSize.label, // 👈 clave para ajustar al icono
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),

            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  const BurgerTab(),
                  const SmoothieTab(),
                  const PancakesTab(),
                  const PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
