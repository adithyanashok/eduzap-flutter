import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ISigninFacade {
  Future<Either<MainFailures, User>> signin(String email, String password);
  Future<Either<MainFailures, User>> googleSignin();
}
