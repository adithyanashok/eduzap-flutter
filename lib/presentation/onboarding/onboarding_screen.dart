import 'package:dots_indicator/dots_indicator.dart';
import 'package:eduzap/presentation/onboarding/widgets/pages.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController(initialPage: 0);

  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 34),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                children: [
                  page(
                    index: pageIndex,
                    context: context,
                    imageName: 'onboard-image1.png',
                    title: 'Better way to learning is calling you!',
                    subtitle:
                        'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue',
                    buttonName: "buttonName",
                  ),
                  page(
                    index: pageIndex,
                    context: context,
                    imageName: 'onboard-image2.png',
                    title: 'Find yourself  by doing whatever you do!',
                    subtitle:
                        'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue',
                    buttonName: "buttonName",
                  ),
                  page(
                    index: pageIndex,
                    context: context,
                    imageName: 'onboard-image3.png',
                    title: 'It’s not just learning, It’s a promise!',
                    subtitle:
                        'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue',
                    buttonName: "buttonName",
                  ),
                ],
              ),
              Positioned(
                bottom: 250,
                child: DotsIndicator(
                  position: pageIndex,
                  dotsCount: 3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
