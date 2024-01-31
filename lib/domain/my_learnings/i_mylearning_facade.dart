import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/my_learnings/model/my_learning_model.dart';

abstract class IMyLearningFacade {
  Future<Either<MainFailures, bool>> saveMyLearning(String courseId);
  Future<Either<MainFailures, List<MyLearningModel>>> getMyLearning();
}
