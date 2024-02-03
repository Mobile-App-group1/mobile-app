import 'package:flutter/material.dart';

class BGSecond {
  final IconData icon;
  final String name;
  BGSecond({required this.icon, required this.name});
}

List<BGSecond> bgsc = <BGSecond>[
  BGSecond(icon: Icons.shopping_cart, name: 'Shop'),
  BGSecond(icon: Icons.garage, name: 'Garage'),
  BGSecond(icon: Icons.engineering, name: 'DTC'),
  BGSecond(icon: Icons.video_settings, name: 'Traning')
];
