part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup(
      {required UserModel user, required String confirmPassword}) = _Signup;
}
