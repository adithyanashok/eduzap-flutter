import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/signup/i_signup_facade.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISignupFacade)
class SignupRepositary extends ISignupFacade {
  @override
  Future<Either<MainFailures, User>> signup(
    UserModel user,
    String confirmPassword,
  ) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final db = FirebaseFirestore.instance;
      // Return a error when text fields in empty
      if (user.username.isEmpty ||
          user.email.isEmpty ||
          user.password.isEmpty) {
        return const Left(
          MainFailures.failures(error: "Please fill all the fields"),
        );
      }
      // Check password and confirm password
      if (user.password != confirmPassword) {
        return const Left(
          MainFailures.failures(error: "Passwords do not match"),
        );
      }
      // Create a account using email
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );

      // Store the user details to new collection
      await db
          .collection('users')
          .doc(userCredential.user?.uid)
          .set(user.toJson());

      // Return the new user
      return Right(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      log(e.code.toString());
      if (e.code == 'email-already-in-use') {
        return Left(MainFailures.failures(error: "${e.message}"));
      } else if (e.code == 'invalid-email') {
        return Left(MainFailures.failures(error: "${e.message}"));
      } else if (e.code == 'weak-password') {
        return Left(MainFailures.failures(error: "${e.message}"));
      } else {
        return Left(MainFailures.failures(error: e.message!));
      }
    }
  }
}
