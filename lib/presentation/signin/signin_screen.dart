import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

import 'widgets/sign_in_buttons.dart';
import 'widgets/sign_in_options.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final List _widgets = [
    const CustomText(
      text: "Welcome back! \n Sign in to continue!",
      fontSize: 26,
      color: grey900,
      textAlign: TextAlign.center,
      fontWeight: FontWeight.bold,
    ),
    const SignInOptions(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
      itemBuilder: (context, index) => _widgets[index],
      separatorBuilder: (context, index) {
        return const SizedBox(height: 100);
      },
      itemCount: _widgets.length,
    ));
  }
}
