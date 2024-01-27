part of 'course_bloc.dart';

@freezed
class CourseEvent with _$CourseEvent {
  const factory CourseEvent.uploadCourse({
    required CourseModel course,
  }) = _UploadCourse;

  const factory CourseEvent.getAllCourses() = _GetAllCourses;
  const factory CourseEvent.getCourse(String id) = _GetCourse;
  const factory CourseEvent.searchCourse(String query) = _SearchCourse;
  const factory CourseEvent.coursesByCategory(String category) =
      _CoursesByCategory;
  const factory CourseEvent.clear() = _Clear;
}