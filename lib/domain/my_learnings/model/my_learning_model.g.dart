// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_learning_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyLearningModelImpl _$$MyLearningModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyLearningModelImpl(
      course: json['course'] as Map<String, dynamic>,
      userId: json['userId'] as String,
      courseId: json['courseId'] as String,
    );

Map<String, dynamic> _$$MyLearningModelImplToJson(
        _$MyLearningModelImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'userId': instance.userId,
      'courseId': instance.courseId,
    };
