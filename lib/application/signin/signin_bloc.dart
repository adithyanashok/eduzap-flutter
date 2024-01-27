import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/signin/i_signin_facade.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

@injectable
class SigninBloc extends Bloc<SigninEvent, SigninState> {
  ISigninFacade iSigninFacade;
  SigninBloc(this.iSigninFacade) : super(SigninState.initial()) {
    on<_Signin>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final signinOpt = await iSigninFacade.signin(
          event.email,
          event.password,
        );
        emit(
          signinOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              signinOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              user: success,
              signinOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
