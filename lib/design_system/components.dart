import 'package:flutter/material.dart';
import 'package:galaxy_explorer/design_system/colors_typography.dart';

Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    margin: const EdgeInsets.only(right: 5.0),
    height: 10.0,
    width: isActive ? 20 : 8,
    decoration: BoxDecoration(
      color: UIColor.primary,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}

List<Widget> buildIndicator(int currentIndex, int numberIndicators) {
  List<Widget> indicators = [];
  for (int i = 0; i < numberIndicators; i++) {
    indicators.add(i == currentIndex ? _indicator(true) : _indicator(false));
  }
  return indicators;
}