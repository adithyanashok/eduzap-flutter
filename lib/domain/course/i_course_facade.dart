import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/course/model/course_model.dart';

abstract class ICourseFacade {
  Future<Either<MainFailures, CourseModel>> uploadCourse(CourseModel course);
  Future<Either<MainFailures, List<CourseModel>>> getAllCourse();
  Future<Either<MainFailures, CourseModel>> getCourse(String id);
  Future<Either<MainFailures, List<CourseModel>>> searchCourse(String query);
  Future<Either<MainFailures, List<CourseModel>>> topRatedCourse();
  Future<Either<MainFailures, void>> deleteCourse(String id);
  Future<Either<MainFailures, void>> updateCourse(
      String id, CourseModel course);
}
