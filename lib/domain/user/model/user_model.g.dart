// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      profile: json['profile'] as String,
      admin: json['admin'] as bool,
      subscriber: json['subscriber'] as bool,
      currentSubDate: json['currentSubDate'] == null
          ? null
          : DateTime.parse(json['currentSubDate'] as String),
      nextSubDate: json['nextSubDate'] == null
          ? null
          : DateTime.parse(json['nextSubDate'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'profile': instance.profile,
      'admin': instance.admin,
      'subscriber': instance.subscriber,
      'currentSubDate': instance.currentSubDate?.toIso8601String(),
      'nextSubDate': instance.nextSubDate?.toIso8601String(),
    };
