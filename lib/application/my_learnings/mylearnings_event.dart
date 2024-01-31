part of 'mylearnings_bloc.dart';

@freezed
class MylearningsEvent with _$MylearningsEvent {
  const factory MylearningsEvent.saveMyLearning(String courseId) =
      _SaveMyLearning;

  const factory MylearningsEvent.getMyLearnings() = _GetMyLearnings;
}
