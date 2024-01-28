import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/user/i_user_facade.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  IUserFacade iUserFacade;
  UserBloc(this.iUserFacade) : super(UserState.initial()) {
    on<_GetCurrentUser>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final userOpt = await iUserFacade.getCurrentUser();
        emit(
          userOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              userOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              user: success,
              userOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
