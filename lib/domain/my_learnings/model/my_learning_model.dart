import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_learning_model.freezed.dart';
part 'my_learning_model.g.dart';

@freezed
class MyLearningModel with _$MyLearningModel {
  const factory MyLearningModel({
    required Map<String, dynamic> course,
    required String userId,
    required String courseId,
  }) = _MyLearningModel;

  factory MyLearningModel.fromJson(Map<String, dynamic> json) =>
      _$MyLearningModelFromJson(json);
}
