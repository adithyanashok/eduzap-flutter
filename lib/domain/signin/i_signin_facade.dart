import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ISigninFacade {
  Future<Either<MainFailures, User>> signin(String email, String password);
}
