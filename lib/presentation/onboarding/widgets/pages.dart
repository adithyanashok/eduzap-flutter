import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/signin/signin_screen.dart';
import 'package:eduzap/presentation/signup/signup_option_screen.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget page({
  required int index,
  required BuildContext context,
  required String imageName,
  required String title,
  required String subtitle,
  required String buttonName,
}) {
  return Column(
    children: [
      const SizedBox(height: 60),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Skip",
              style: GoogleFonts.plusJakartaSans(
                color: primaryBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      const SizedBox(height: 10),
      Image.asset(
        'assets/images/$imageName',
        fit: BoxFit.cover,
        width: 210,
      ),
      const SizedBox(height: 50),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText(
          text: title,
          textAlign: TextAlign.center,
          fontSize: 26,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: CustomText(
          text: subtitle,
          fontSize: 14,
          color: grey300,
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(height: 40),
      CustomPrimaryButton(
        text: "Register",
        color: primaryBlue,
        textColor: Colors.white,
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignupOptionScreen(),
          ),
        ),
      ),
      const SizedBox(height: 25),
      CustomPrimaryButton(
        text: "Login",
        color: Colors.white,
        textColor: primaryBlue,
        border: Border.all(color: grey100),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignInScreen(),
          ),
        ),
      ),
    ],
  );
}
