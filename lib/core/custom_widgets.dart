import 'package:flutter/material.dart';

customIcon(double iSize, IconData icon, Color iColor) {
  return Icon(
    icon,
    size: iSize,
    color: iColor,
  );
}

customText(
  String text,
  double size,
  Color tColor,
  FontWeight? weight,
) {
  return Text(
    text,
    style: TextStyle(fontSize: size, fontWeight: null, color: tColor),
  );
}
