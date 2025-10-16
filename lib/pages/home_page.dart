import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

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
          //elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // Handle menu button press
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // Handle profile button press
                },
              ),
            )
          ],
        ),
      
        body: Column(
          children : [
            Padding(
              padding : const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text("I want to",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text("eat",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
      
                    ),
                  ) 
                ],
              )
            ),

            const SizedBox(height: 17),

            TabBar(
              tabs: myTabs,
              ),
      
          ],
      )
         
      ),
    );
  }
}
