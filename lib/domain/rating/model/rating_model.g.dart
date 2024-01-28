// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      profile: json['profile'] as String,
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
      ratingString: json['ratingString'] as String,
      courseId: json['courseId'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'name': instance.name,
      'rating': instance.rating,
      'ratingString': instance.ratingString,
      'courseId': instance.courseId,
      'id': instance.id,
    };
