part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required UserModel user,
    required List<UserModel> studentsList,
    required Option<Either<MainFailures, UserModel>> userOpt,
  }) = _UserState;

  factory UserState.initial() {
    return const UserState(
      isLoading: false,
      user: UserModel(
        username: "",
        email: "",
        password: "",
        profile: '',
        admin: false,
        subscriber: false,
      ),
      userOpt: None(),
      studentsList: [],
    );
  }
}
