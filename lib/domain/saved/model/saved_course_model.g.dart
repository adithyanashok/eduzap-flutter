// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedCourseModelImpl _$$SavedCourseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedCourseModelImpl(
      course: json['course'] as Map<String, dynamic>,
      userId: json['userId'] as String,
      courseId: json['courseId'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SavedCourseModelImplToJson(
        _$SavedCourseModelImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'userId': instance.userId,
      'courseId': instance.courseId,
      'id': instance.id,
    };
