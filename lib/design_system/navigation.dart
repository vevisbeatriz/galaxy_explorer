import 'package:flutter/material.dart';
import 'package:galaxy_explorer/design_system/colors_typography.dart';
import 'package:galaxy_explorer/presentation/pages/login_page.dart';

AppBar onboardingAppBar(BuildContext context) {
  return AppBar(elevation: 0.0, backgroundColor: Colors.white, actions: [
    Padding(
      padding: const EdgeInsets.only(right: 20, top: 20),
      child: InkWell(
        onTap: () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage())),
        child: secondaryBody('Skip'),
      ),
    )
  ]);
}