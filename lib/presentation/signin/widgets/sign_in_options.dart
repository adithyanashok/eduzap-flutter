import 'package:eduzap/application/signin/signin_bloc.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/core/snack_bar.dart';
import 'package:eduzap/presentation/main/main_screen.dart';
import 'package:eduzap/presentation/signin/widgets/sign_in_buttons.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInOptions extends StatefulWidget {
  const SignInOptions({super.key});

  @override
  State<SignInOptions> createState() => _SignInOptionsState();
}

class _SignInOptionsState extends State<SignInOptions> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SigninBloc, SigninState>(
      listener: (context, state) {
        state.signinOpt.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showSnackBar(context, failure.error);
            },
            (success) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              );
            },
          ),
        );
      },
      child: Stack(
        children: [
          Column(
            children: [
              const SocialButton(
                text: "Log in with Google",
                imageName: 'google.png',
                imgWidth: 25,
              ),
              const SizedBox(height: 20),
              const SocialButton(
                text: "Log in with Google",
                imageName: 'fb.png',
                imgWidth: 32,
              ),
              const SizedBox(height: 30),
              const CustomText(text: 'or', fontSize: 18, color: grey300),
              CustomTextField(
                hintText: 'Enter email',
                controller: emailController,
              ),
              CustomTextField(
                hintText: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 30),
              SignInButton(
                onTap: () {
                  context.read<SigninBloc>().add(
                        SigninEvent.signin(
                          email: emailController.text,
                          password: passwordController.text,
                        ),
                      );
                },
              ),
            ],
          ),
          BlocBuilder<SigninBloc, SigninState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
