import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignupActionButtons extends StatelessWidget {
  const SignupActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SocialButton(
          text: "Sign Up with Google",
          imageName: 'google.png',
          imgWidth: 25,
        ),
        SizedBox(height: 20),
        SocialButton(
          text: "Sign Up with Google",
          imageName: 'fb.png',
          imgWidth: 32,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: CustomText(text: 'or', fontSize: 18, color: grey300),
        ),
        CustomPrimaryButton(
          text: 'Signup with email',
          color: grey50,
          textColor: grey900,
          fontSize: 18,
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: CustomText(
            text:
                'By signing up you are agreed with our friendly terms and condition.',
            fontSize: 14,
            color: grey300,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
