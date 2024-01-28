import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/rating/model/rating_model.dart';

abstract class IRatingFacade {
  Future<Either<MainFailures, RatingModel>> addRating(RatingModel rating);
  Future<Either<MainFailures, List<RatingModel>>> getRatingByCourse(
    String courseId,
  );
}
