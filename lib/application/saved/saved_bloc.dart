import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/saved/i_saved_facade.dart';
import 'package:eduzap/domain/saved/model/saved_course_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'saved_event.dart';
part 'saved_state.dart';
part 'saved_bloc.freezed.dart';

@injectable
class SavedBloc extends Bloc<SavedEvent, SavedState> {
  ISavedFacade iSavedFacade;
  SavedBloc(this.iSavedFacade) : super(SavedState.initial()) {
    on<_SaveCourse>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final savedOpt = await iSavedFacade.saveCourse(event.savedCourseModel);
        emit(
          savedOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              saveCourseOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              saveCourseOpt: Some(
                Right(success),
              ),
              savedCourse: success,
            ),
          ),
        );
      },
    );

    on<_GetSavedList>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final savedOpt = await iSavedFacade.getSavedList();
        emit(
          savedOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              saveCourseListOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              saveCourseListOpt: Some(
                Right(success),
              ),
              savedCourseList: success,
            ),
          ),
        );
      },
    );

    on<_GetSaved>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final savedOpt = await iSavedFacade.getSavedCourse(event.courseId);
        emit(
          savedOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              saveCourseOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              saveCourseOpt: Some(
                Right(success),
              ),
              savedCourse: success,
            ),
          ),
        );
      },
    );
  }
}
