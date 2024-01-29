part of 'saved_bloc.dart';

@freezed
class SavedState with _$SavedState {
  const factory SavedState({
    required bool isLoading,
    required bool success,
    required SavedCourseModel savedCourse,
    required Option<Either<MainFailures, SavedCourseModel>> saveCourseOpt,
    required List<SavedCourseModel> savedCourseList,
    required Option<Either<MainFailures, List<SavedCourseModel>>>
        saveCourseListOpt,
  }) = _SavedState;

  factory SavedState.initial() {
    return const SavedState(
      success: false,
      isLoading: false,
      saveCourseOpt: None(),
      savedCourseList: [],
      saveCourseListOpt: None(),
      savedCourse: SavedCourseModel(
        course: {},
        userId: "",
        courseId: "",
        id: "",
      ),
    );
  }
}
