import 'package:freezed_annotation/freezed_annotation.dart';
part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String courseTitle,
    required String courseDescription,
    required String courseOverview,
    required String tutorName,
    required double rating,
    required String category,
    required List<String> lessons,
    required String videoUrl,
    required String imageUrl,
    required String id,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}
