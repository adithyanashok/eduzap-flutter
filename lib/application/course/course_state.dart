part of 'course_bloc.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    required bool isLoading,
    required List<CourseModel> courses,
    required List<CourseModel> searchList,
    required List<CourseModel> coursebyCategoryList,
    required CourseModel course,
    required Option<Either<MainFailures, CourseModel>> courseOpt,
    required Option<Either<MainFailures, List<CourseModel>>> courseListOpt,
    required Option<Either<MainFailures, List<CourseModel>>>
        coursebyCategoryOpt,
    required Option<Either<MainFailures, List<CourseModel>>> searchListOpt,
    String? error,
  }) = _CourseState;

  factory CourseState.initial() {
    return const CourseState(
      searchList: [],
      searchListOpt: None(),
      isLoading: false,
      courses: [],
      courseOpt: None(),
      courseListOpt: None(),
      course: CourseModel(
        id: '',
        courseTitle: "",
        courseDescription: "",
        courseOverview: "",
        tutorName: "",
        lessons: [],
        videoUrl: "",
        imageUrl: "",
        category: '',
        rating: 0,
      ),
      coursebyCategoryList: [],
      coursebyCategoryOpt: None(),
    );
  }
}
