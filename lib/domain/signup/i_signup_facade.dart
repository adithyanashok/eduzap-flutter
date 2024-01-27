import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ISignupFacade {
  Future<Either<MainFailures, User>> signup(
    UserModel user,
    String confirmPassword,
  );
}
