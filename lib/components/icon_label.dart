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
        Icon(icon, size: 20), // You can adjust the size as needed
        const SizedBox(height: 4), // Space between icon and label
        Text(label, style: const TextStyle(fontSize: 11)), // Customize text style as needed
      ],
    );
  }
}
