import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/user/model/user_model.dart';

abstract class IUserFacade {
  Future<Either<MainFailures, UserModel>> getCurrentUser();
  Future<Either<MainFailures, UserModel>> updateSubscription();
  Future<Either<MainFailures, List<UserModel>>> getAllStudents();
}
