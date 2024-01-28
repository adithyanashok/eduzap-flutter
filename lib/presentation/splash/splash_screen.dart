import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/main/main_screen.dart';
import 'package:eduzap/presentation/onboarding/onboarding_screen.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    // Delayed execution after 3 seconds
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        // Authenticate the user using LocalAuthApi (authentication logic not shown)

        // Check if the user is authenticated
        if (user != null) {
          // If the user's email is verified, navigate to a certain route
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ),
          );
        } else {
          // If the user's email is not verified, navigate to another route
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ),
          );
        }
      },
    );
    return const Scaffold(
      backgroundColor: primaryBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CustomText(
              text: "EduZap",
              fontSize: 70,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
