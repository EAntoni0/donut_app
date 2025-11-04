import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizza;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String imagePath;
  final String pizzaProvider;
  final VoidCallback onAddToCart;

  const PizzaTile({
    super.key,
    required this.pizza,
    required this.pizzaPrice,
    required this.pizzaColor,
    required this.imagePath,
    required this.pizzaProvider,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50],
          borderRadius: BorderRadius.circular(24), 
          
        ),
      
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
      
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
      
                  child: Text(
                    "\$$pizzaPrice",
                    style: TextStyle(
                      color: pizzaColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ), 
            ],
          ),
          
          
            Padding(padding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 36,
            ),
            child: Image.asset(imagePath),
            ),
      
            Text(
              pizza,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
      
            Text(
              pizzaProvider,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite, color: Colors.pink[400]),
                TextButton(
                  onPressed: onAddToCart,
                  child: Text("Add to Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  
                  ),
                ),
              ],
            )
      
          
          ],
        
        ),

      ),
    );
  }
}
