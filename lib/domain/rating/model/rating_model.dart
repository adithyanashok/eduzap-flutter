import 'package:freezed_annotation/freezed_annotation.dart';
part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    required String profile,
    required String name,
    required double rating,
    required String ratingString,
    required String courseId,
    String? id,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
