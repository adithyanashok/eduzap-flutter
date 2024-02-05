import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eduzap/presentation/admin_home/admin_home_screen.dart';
import 'package:eduzap/presentation/main/main_screen.dart';
import 'package:eduzap/presentation/onboarding/onboarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void router(context) {
  final User? user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore.instance.collection('users').doc(user?.uid).get().then(
    (value) {
      if (value.exists) {
        if (value.get("admin") == true) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const AdminHome(),
            ),
            (route) => false,
          );
        } else if (value.get("admin") == false) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ),
            (route) => false,
          );
        } else {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ),
            (route) => false,
          );
        }
      } else {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ),
          (route) => false,
        );
      }
    },
  );
}
