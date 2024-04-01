import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galaxy_explorer/design_system/buttons.dart';
import 'package:galaxy_explorer/design_system/colors_typography.dart';
import 'package:galaxy_explorer/presentation/pages/login_page.dart';
import 'package:galaxy_explorer/design_system/components.dart';
import '../../design_system/constants.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.background,
      appBar: onboardingAppBar(context),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              createPage(
                  image: 'assets/images/onboarding1.png',
                  title: Constants.titleOne,
                  description: Constants.descriptionOne),
              createPage(
                  image: 'assets/images/onboarding2.png',
                  title: Constants.titleTwo,
                  description: Constants.descriptionTwo),
              createPage(
                  image: 'assets/images/onboarding3.png',
                  title: Constants.titleThree,
                  description: Constants.descriptionThree),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 30,
            child: Row(
              children: buildIndicator(currentIndex, 3),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: circleButton(context, onboardingButton(context, nextIcon())),
          )
        ],
      ),
    );
  }

  IconButton onboardingButton(BuildContext context, Icon nextIcon) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (currentIndex == 2) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          } else {
            currentIndex++;
            _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
          }
        });
      },
      icon: nextIcon,
    );
  }

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
}

class createPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const createPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(image),
          ),
          const SizedBox(height: 20),
          accentTitle(title),
          const SizedBox(height: 20),
          primaryBody(description),
        ],
      ),
    );
  }
}
