import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomText(
          text: 'Already have an account?',
          fontSize: 16,
          color: grey900,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        CustomText(
          text: 'Signin',
          fontSize: 16,
          color: primaryBlue,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
