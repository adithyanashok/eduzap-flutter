import 'package:eduzap/application/signin/signin_bloc.dart';
import 'package:eduzap/infrastructure/signin/signin_repositary.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupActionButtons extends StatelessWidget {
  const SignupActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.read<SigninBloc>().add(const SigninEvent.googleSignin());
          },
          child: const SocialButton(
            text: "Sign Up with Google",
            imageName: 'google.png',
            imgWidth: 25,
          ),
        ),
        const SizedBox(height: 20),
        const SocialButton(
          text: "Sign Up with Facebook",
          imageName: 'fb.png',
          imgWidth: 32,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: CustomText(text: 'or', fontSize: 18, color: grey300),
        ),
        const CustomPrimaryButton(
          text: 'Signup with email',
          color: grey50,
          textColor: grey900,
          fontSize: 18,
        ),
        const SizedBox(height: 30),
        const Padding(
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
