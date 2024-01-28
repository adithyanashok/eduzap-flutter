part of 'rating_bloc.dart';

@freezed
class RatingState with _$RatingState {
  const factory RatingState({
    required bool isLoading,
    String? errorText,
    RatingModel? rating,
    required Option<Either<MainFailures, RatingModel>> ratingOpt,
    required List<RatingModel> ratings,
    required Option<Either<MainFailures, List<RatingModel>>> ratingsOpt,
  }) = _RatingState;

  factory RatingState.initial() {
    return const RatingState(
      isLoading: false,
      ratingOpt: None(),
      ratings: [],
      ratingsOpt: None(),
    );
  }
}
