import 'dart:io';

import 'package:eduzap/application/signup/signup_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/core/snack_bar.dart';
import 'package:eduzap/presentation/main/main_screen.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class SignUpInputs extends StatefulWidget {
  const SignUpInputs({super.key});

  @override
  State<SignUpInputs> createState() => _SignUpInputsState();
}

class _SignUpInputsState extends State<SignUpInputs> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool obscureText = false;
  XFile? pickedImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocConsumer<SignupBloc, SignupState>(
          listener: (context, state) {
            state.signinOpt.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  showSnackBar(context, failure.error);
                },
                (success) {
                  context
                      .read<UserBloc>()
                      .add(const UserEvent.getCurrentUser());

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
              ),
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    final image = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      setState(() {
                        pickedImage = image;
                      });
                    }
                  },
                  child: pickedImage == null
                      ? Image.asset(
                          'assets/images/add-profile.png',
                          width: 150,
                        )
                      : CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.file(
                              File(pickedImage!.path),
                              fit: BoxFit.cover,
                              width: 150,
                              height: 160,
                            ),
                          ),
                        ),
                ),
                CustomTextField(
                  hintText: 'Enter username',
                  controller: usernameController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Enter email',
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Password',
                  controller: passwordController,
                  maxLines: null,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Confirm password',
                  controller: confirmPasswordController,
                ),
                const SizedBox(height: 20),
                CustomPrimaryButton(
                  text: 'Continue',
                  color: primaryBlue,
                  textColor: Colors.white,
                  onTap: () {
                    context.read<SignupBloc>().add(
                          SignupEvent.signup(
                            user: UserModel(
                              username: usernameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              profile: pickedImage!.path,
                            ),
                            confirmPassword: confirmPasswordController.text,
                          ),
                        );
                  },
                )
              ],
            );
          },
        ),
        BlocBuilder<SignupBloc, SignupState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : const SizedBox();
          },
        )
      ],
    );
  }
}
