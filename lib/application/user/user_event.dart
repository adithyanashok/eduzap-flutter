part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getCurrentUser() = _GetCurrentUser;
  const factory UserEvent.getAllStudents() = _GetAllStudents;
  const factory UserEvent.updateSubscription() = _UpdateSubscription;
}
