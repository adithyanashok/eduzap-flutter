// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseModelImpl _$$CourseModelImplFromJson(Map<String, dynamic> json) =>
    _$CourseModelImpl(
      courseTitle: json['courseTitle'] as String,
      courseDescription: json['courseDescription'] as String,
      courseOverview: json['courseOverview'] as String,
      tutorName: json['tutorName'] as String,
      rating: (json['rating'] as num).toDouble(),
      category: json['category'] as String,
      lessons:
          (json['lessons'] as List<dynamic>).map((e) => e as String).toList(),
      videoUrl: json['videoUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$CourseModelImplToJson(_$CourseModelImpl instance) =>
    <String, dynamic>{
      'courseTitle': instance.courseTitle,
      'courseDescription': instance.courseDescription,
      'courseOverview': instance.courseOverview,
      'tutorName': instance.tutorName,
      'rating': instance.rating,
      'category': instance.category,
      'lessons': instance.lessons,
      'videoUrl': instance.videoUrl,
      'imageUrl': instance.imageUrl,
      'id': instance.id,
    };
