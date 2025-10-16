import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imagePath;
  final String donutProvider;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imagePath,
    required this.donutProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24), 
          
        ),
      
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
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
                    "\$$donutPrice",
                    style: TextStyle(
                      color: donutColor[800],
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
              donutFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
      
            Text(
              donutProvider,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite, color: Colors.pink[400]),
                TextButton(
                  onPressed: () {}, 
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
