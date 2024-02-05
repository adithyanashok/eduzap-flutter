import 'dart:developer';

import 'package:eduzap/domain/signin/util/role_based_login.dart';
import 'package:eduzap/presentation/core/colors.dart';

import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    log(user.toString());
    // Delayed execution after 3 seconds
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        if (user != null) {
          router(context);
        } else {
          router(context);
        }
      },
    );
    return const Scaffold(
      backgroundColor: primaryBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CustomText(
              text: "EduZap",
              fontSize: 70,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
