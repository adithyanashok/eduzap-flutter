import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'saved_course_model.freezed.dart';
part 'saved_course_model.g.dart';

@freezed
class SavedCourseModel with _$SavedCourseModel {
  const factory SavedCourseModel({
    required Map<String, dynamic> course,
    required String userId,
    required String courseId,
    required String id,
  }) = _SavedCourseModel;

  factory SavedCourseModel.fromJson(Map<String, dynamic> json) =>
      _$SavedCourseModelFromJson(json);
}
