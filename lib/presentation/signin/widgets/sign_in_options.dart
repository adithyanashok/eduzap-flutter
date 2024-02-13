import 'package:eduzap/application/signin/signin_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/domain/signin/util/role_based_login.dart';
import 'package:eduzap/presentation/core/snack_bar.dart';
import 'package:eduzap/presentation/signin/widgets/sign_in_buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
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
              context.read<UserBloc>().add(const UserEvent.getCurrentUser());

              router(context);
            },
          ),
        );
      },
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/elearning1.png',
                fit: BoxFit.cover,
                width: 350,
              ),
              const SizedBox(height: 30),
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
