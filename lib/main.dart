import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galaxy_explorer/presentation/pages/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: theme(),
      home: OnboardingPage(),
    );
  }
}