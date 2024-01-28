import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/course/i_course_facade.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'course_event.dart';
part 'course_state.dart';
part 'course_bloc.freezed.dart';

@injectable
class CourseBloc extends Bloc<CourseEvent, CourseState> {
  ICourseFacade iCourseFacade;
  CourseBloc(this.iCourseFacade) : super(CourseState.initial()) {
    // Clear state
    on<_Clear>(
      (event, emit) async {
        emit(
          state.copyWith(
            searchList: [],
            searchListOpt: const None(),
            coursebyCategoryList: [],
            coursebyCategoryOpt: const None(),
          ),
        );
      },
    );
    on<_UploadCourse>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final courseOpt = await iCourseFacade.uploadCourse(event.course);
        emit(
          courseOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              courseOpt: Some(
                Left(failure),
              ),
              error: failure.error,
            ),
            (success) => state.copyWith(
              isLoading: false,
              course: success,
              courseOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    // Get all courses
    on<_GetAllCourses>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final courseOpt = await iCourseFacade.getAllCourse();
        emit(
          courseOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              courseListOpt: Some(
                Left(failure),
              ),
              error: failure.error,
            ),
            (success) => state.copyWith(
              isLoading: false,
              courses: success,
              courseListOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    // Get Course
    on<_GetCourse>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final courseOpt = await iCourseFacade.getCourse(event.id);
        emit(
          courseOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              courseOpt: Some(
                Left(failure),
              ),
              error: failure.error,
            ),
            (success) => state.copyWith(
              isLoading: false,
              course: success,
              courseOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    // Search courses
    on<_SearchCourse>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final courseOpt = await iCourseFacade.searchCourse(event.query);
        emit(
          courseOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              searchListOpt: Some(
                Left(failure),
              ),
              error: failure.error,
            ),
            (success) => state.copyWith(
              isLoading: false,
              searchList: success,
              coursebyCategoryList: success,
              searchListOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    // Search courses
    on<_CoursesByCategory>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final courseOpt = await iCourseFacade.searchCourse(event.category);
        emit(
          courseOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              coursebyCategoryOpt: Some(
                Left(failure),
              ),
              error: failure.error,
            ),
            (success) => state.copyWith(
              isLoading: false,
              coursebyCategoryList: success,
              coursebyCategoryOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
