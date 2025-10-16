import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;

  const MyTab({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          // Icono con fondo gris y borde negro
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              //color: Colors.grey[300], // Fondo gris
              shape: BoxShape.circle,
              
            ),
            child: Image.asset(
              iconPath,
              width: 40,
              height: 40,
            ),
          ),

          // Texto debajo del icono
          Positioned(
            bottom: -16,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
