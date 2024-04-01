import 'package:flutter/material.dart';
import 'package:galaxy_explorer/design_system/colors_typography.dart';

Container circleButton(BuildContext context, IconButton onboardingButton) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: UIColor.primary,
    ),
    child: onboardingButton,
  );
}

Icon nextIcon() {
  return const Icon(
    Icons.arrow_forward_ios,
    size: 24,
    color: Colors.white,
  );
}