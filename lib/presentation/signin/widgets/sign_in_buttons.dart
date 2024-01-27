import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback onTap;
  const SignInButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPrimaryButton(
          text: 'Log in',
          color: primaryBlue,
          textColor: Colors.white,
          onTap: () => onTap(),
        ),
        const SizedBox(height: 40),
        const CustomText(
          text: 'Forgot Password',
          fontSize: 16,
          color: primaryBlue,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
