import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/signup/widgets/sign_up_options.dart';
import 'package:eduzap/presentation/signup/widgets/signup_inputs.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignupOptionScreen extends StatelessWidget {
  SignupOptionScreen({super.key});

  final List _widgets = [
    const CustomText(
      text: "Welcome! \n Sign Up to continue!",
      fontSize: 26,
      color: grey900,
      textAlign: TextAlign.center,
      fontWeight: FontWeight.bold,
    ),
    const SignUpInputs(),
    const SignInOptions(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
          itemBuilder: (ctx, index) => _widgets[index],
          separatorBuilder: (ctx, index) => const SizedBox(
            height: 30,
          ),
          itemCount: _widgets.length,
        ),
      ),
    );
  }
}
