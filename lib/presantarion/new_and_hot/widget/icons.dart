import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class IconsInNewandHot extends StatelessWidget {
  const IconsInNewandHot({
    super.key,
    required this.icon,
    required this.label,
  });
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: clrWhite,
          size: 30,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
