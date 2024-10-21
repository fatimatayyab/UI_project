import 'package:flutter/material.dart';

class IconLabelWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconLabelWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 20), 
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 11)), // Customize text style as needed
      ],
    );
  }
}
