part of 'saved_bloc.dart';

@freezed
class SavedEvent with _$SavedEvent {
  const factory SavedEvent.saveCourse(SavedCourseModel savedCourseModel) =
      _SaveCourse;

  const factory SavedEvent.getSavedList() = _GetSavedList;
  const factory SavedEvent.getSaved(String courseId) = _GetSaved;
}
