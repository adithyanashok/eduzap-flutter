import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/saved/model/saved_course_model.dart';

abstract class ISavedFacade {
  Future<Either<MainFailures, SavedCourseModel>> saveCourse(
    SavedCourseModel savedCourseModel,
  );
  Future<Either<MainFailures, List<SavedCourseModel>>> getSavedList();
  Future<Either<MainFailures, SavedCourseModel>> getSavedCourse(
    String courseId,
  );
}
