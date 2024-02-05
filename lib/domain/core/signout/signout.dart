import 'package:eduzap/presentation/core/snack_bar.dart';
import 'package:eduzap/presentation/signin/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> signOut(context) async {
  try {
    await FirebaseAuth.instance.signOut();

    // Navigate to the onboarding screen after successful sign-out.
    await Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (context) {
        return const SignInScreen(); // Redirect to the login screen.
      },
    ), (route) => false);
  } catch (e) {
    showSnackBar(context, "Error while signing out");
  }
}
