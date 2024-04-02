import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class UIColor {
  // Private constructor
  UIColor._();

  // Primary colors
  static const Color primary = Color(0xFF6200EE);
  static const Color black = Colors.black;
  static const Color background = Colors.white;
  static const Color bodyGrey = Colors.grey;
}

AutoSizeText primaryBody(String description) {
  return AutoSizeText(
    description,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: UIColor.bodyGrey,
    ),
  );
}

AutoSizeText accentTitle(String title) {
  return AutoSizeText(
    title,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: UIColor.primary,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

AutoSizeText secondaryBody(String text) {
  return AutoSizeText(
    text,
    style: const TextStyle(
      color: UIColor.bodyGrey,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
  );
}