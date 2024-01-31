import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/my_learnings/i_mylearning_facade.dart';
import 'package:eduzap/domain/my_learnings/model/my_learning_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'mylearnings_event.dart';
part 'mylearnings_state.dart';
part 'mylearnings_bloc.freezed.dart';

@injectable
class MylearningsBloc extends Bloc<MylearningsEvent, MylearningsState> {
  IMyLearningFacade iMyLearningFacade;
  MylearningsBloc(this.iMyLearningFacade) : super(MylearningsState.initial()) {
    on<_SaveMyLearning>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final courseOpt =
            await iMyLearningFacade.saveMyLearning(event.courseId);
        emit(
          courseOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              myLearningOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
            ),
          ),
        );
      },
    );

    on<_GetMyLearnings>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final courseOpt = await iMyLearningFacade.getMyLearning();
        emit(
          courseOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              myLearningListOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              myLearningList: success,
              myLearningListOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
