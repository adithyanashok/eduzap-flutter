part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({
    required bool isLoading,
    User? user,
    required Option<Either<MainFailures, User>> signinOpt,
  }) = _SigninState;

  factory SigninState.initial() {
    return const SigninState(
      isLoading: false,
      signinOpt: None(),
    );
  }
}
