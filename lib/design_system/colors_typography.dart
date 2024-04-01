import 'package:flutter/material.dart';

class UIColor {
  // Private constructor
  UIColor._();

  // Primary colors
  static const Color primary = Color(0xFF6200EE);
  static const Color black = Colors.black;
  static const Color background = Colors.white;
  static const Color bodyGrey = Colors.grey;
}

Text primaryBody(String description) {
  return Text(
    description,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: UIColor.bodyGrey,
    ),
  );
}

Text accentTitle(String title) {
  return Text(
    title,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: UIColor.primary,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text secondaryBody(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: UIColor.bodyGrey,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
  );
}