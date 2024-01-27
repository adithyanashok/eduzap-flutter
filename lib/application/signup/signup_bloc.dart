import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/signup/i_signup_facade.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  ISignupFacade iSignupFacade;
  SignupBloc(this.iSignupFacade) : super(SignupState.initial()) {
    on<_Signup>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final signupOpt = await iSignupFacade.signup(
          event.user,
          event.confirmPassword,
        );
        emit(
          signupOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              signinOpt: Some(
                Left(
                  failure,
                ),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              signinOpt: Some(Right(success)),
              user: success,
            ),
          ),
        );
      },
    );
  }
}
