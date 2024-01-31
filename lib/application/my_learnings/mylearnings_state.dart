part of 'mylearnings_bloc.dart';

@freezed
class MylearningsState with _$MylearningsState {
  const factory MylearningsState({
    required bool isLoading,
    required List<MyLearningModel> myLearningList,
    required MyLearningModel myLearning,
    required Option<Either<MainFailures, List<MyLearningModel>>>
        myLearningListOpt,
    required Option<Either<MainFailures, MyLearningModel>> myLearningOpt,
  }) = _MylearningsState;

  factory MylearningsState.initial() {
    return const MylearningsState(
      isLoading: false,
      myLearningList: [],
      myLearning: MyLearningModel(
        course: {},
        userId: '',
        courseId: '',
      ),
      myLearningListOpt: None(),
      myLearningOpt: None(),
    );
  }
}
