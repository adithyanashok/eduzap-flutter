import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String username,
    required String email,
    required String password,
    required String profile,
    required bool admin,
    required bool subscriber,
    DateTime? currentSubDate,
    DateTime? nextSubDate,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
