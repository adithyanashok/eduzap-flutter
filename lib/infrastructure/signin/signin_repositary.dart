import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/signin/i_signin_facade.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISigninFacade)
class SigninRepositary extends ISigninFacade {
  @override
  Future<Either<MainFailures, User>> signin(
      String email, String password) async {
    try {
      if (email.isEmpty || password.isEmpty) {
        return const Left(
            MainFailures.failures(error: 'Please fill all the fields'));
      }
      final auth = FirebaseAuth.instance;
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        return const Left(MainFailures.failures(error: 'User not found'));
      }

      return Right(credential.user!);
    } on FirebaseAuthException catch (e) {
      return Left(MainFailures.failures(error: '${e.message}'));
    }
  }

  @override
  Future<Either<MainFailures, User>> googleSignin() async {
    try {
      final auth = FirebaseAuth.instance;
      final googleUser = await GoogleSignIn().signIn();

      final googleAuth = await googleUser?.authentication;
      // Create a new credential
      if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        UserCredential userCredential =
            await auth.signInWithCredential(credential);

        final User? user = userCredential.user;

        return Right(user!);
      } else {
        return const Left(MainFailures.failures(error: 'Something went wrong'));
      }
    } on FirebaseAuthException catch (e) {
      return Left(MainFailures.failures(error: '${e.message}'));
    } on PlatformException catch (e) {
      return Left(MainFailures.failures(error: '${e.message}'));
    }
  }
}
