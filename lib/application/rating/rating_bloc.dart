import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/rating/i_rating_facade.dart';
import 'package:eduzap/domain/rating/model/rating_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rating_event.dart';
part 'rating_state.dart';
part 'rating_bloc.freezed.dart';

@injectable
class RatingBloc extends Bloc<RatingEvent, RatingState> {
  IRatingFacade iRatingFacade;
  RatingBloc(this.iRatingFacade) : super(RatingState.initial()) {
    on<_Clear>(
      (event, emit) async {
        emit(
          state.copyWith(
            errorText: null,
            ratings: [],
            ratingsOpt: const None(),
            ratingOpt: const None(),
          ),
        );
      },
    );
    on<_AddRating>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final ratingOpt = await iRatingFacade.addRating(event.rating);
        emit(
          ratingOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              ratingOpt: Some(
                Left(failure),
              ),
              errorText: failure.error,
            ),
            (success) => state.copyWith(
              isLoading: false,
              rating: success,
              ratingOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );

    on<_GetRatingByCourse>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final ratingOpt = await iRatingFacade.getRatingByCourse(event.courseId);
        emit(
          ratingOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              ratingsOpt: Some(
                Left(failure),
              ),
              errorText: failure.error,
            ),
            (success) => state.copyWith(
              isLoading: false,
              ratings: success,
              ratingsOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
