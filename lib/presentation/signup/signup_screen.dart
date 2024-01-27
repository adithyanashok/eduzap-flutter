import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/signup/widgets/signup_inputs.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final List _widgets = [
    const Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: CustomText(
        text: "Enter your details",
        fontSize: 23,
        color: grey900,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SignUpInputs(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
        itemBuilder: (context, index) => _widgets[index],
        separatorBuilder: (context, index) => const SizedBox(
          height: 80,
        ),
        itemCount: _widgets.length,
      ),
    );
  }
}
