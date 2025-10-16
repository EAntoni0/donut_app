import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;
  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
return Tab(
  height: 80,
      child: Column(
        mainAxisSize: MainAxisSize
            .min, // Asegura que la columna no ocupe más espacio del necesario
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                iconPath,
                color: Colors.grey[600],
                width: 32,
                height: 32,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
     ),
);
}
}