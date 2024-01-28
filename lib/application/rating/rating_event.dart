part of 'rating_bloc.dart';

@freezed
class RatingEvent with _$RatingEvent {
  const factory RatingEvent.addRating(RatingModel rating) = _AddRating;
  const factory RatingEvent.clear() = _Clear;
  const factory RatingEvent.getRatingByCourse(String courseId) =
      _GetRatingByCourse;
}
