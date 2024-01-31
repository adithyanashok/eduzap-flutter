// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_learning_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyLearningModel _$MyLearningModelFromJson(Map<String, dynamic> json) {
  return _MyLearningModel.fromJson(json);
}

/// @nodoc
mixin _$MyLearningModel {
  Map<String, dynamic> get course => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyLearningModelCopyWith<MyLearningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLearningModelCopyWith<$Res> {
  factory $MyLearningModelCopyWith(
          MyLearningModel value, $Res Function(MyLearningModel) then) =
      _$MyLearningModelCopyWithImpl<$Res, MyLearningModel>;
  @useResult
  $Res call({Map<String, dynamic> course, String userId, String courseId});
}

/// @nodoc
class _$MyLearningModelCopyWithImpl<$Res, $Val extends MyLearningModel>
    implements $MyLearningModelCopyWith<$Res> {
  _$MyLearningModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? userId = null,
    Object? courseId = null,
  }) {
    return _then(_value.copyWith(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyLearningModelImplCopyWith<$Res>
    implements $MyLearningModelCopyWith<$Res> {
  factory _$$MyLearningModelImplCopyWith(_$MyLearningModelImpl value,
          $Res Function(_$MyLearningModelImpl) then) =
      __$$MyLearningModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> course, String userId, String courseId});
}

/// @nodoc
class __$$MyLearningModelImplCopyWithImpl<$Res>
    extends _$MyLearningModelCopyWithImpl<$Res, _$MyLearningModelImpl>
    implements _$$MyLearningModelImplCopyWith<$Res> {
  __$$MyLearningModelImplCopyWithImpl(
      _$MyLearningModelImpl _value, $Res Function(_$MyLearningModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? userId = null,
    Object? courseId = null,
  }) {
    return _then(_$MyLearningModelImpl(
      course: null == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyLearningModelImpl implements _MyLearningModel {
  const _$MyLearningModelImpl(
      {required final Map<String, dynamic> course,
      required this.userId,
      required this.courseId})
      : _course = course;

  factory _$MyLearningModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyLearningModelImplFromJson(json);

  final Map<String, dynamic> _course;
  @override
  Map<String, dynamic> get course {
    if (_course is EqualUnmodifiableMapView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_course);
  }

  @override
  final String userId;
  @override
  final String courseId;

  @override
  String toString() {
    return 'MyLearningModel(course: $course, userId: $userId, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLearningModelImpl &&
            const DeepCollectionEquality().equals(other._course, _course) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_course), userId, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLearningModelImplCopyWith<_$MyLearningModelImpl> get copyWith =>
      __$$MyLearningModelImplCopyWithImpl<_$MyLearningModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyLearningModelImplToJson(
      this,
    );
  }
}

abstract class _MyLearningModel implements MyLearningModel {
  const factory _MyLearningModel(
      {required final Map<String, dynamic> course,
      required final String userId,
      required final String courseId}) = _$MyLearningModelImpl;

  factory _MyLearningModel.fromJson(Map<String, dynamic> json) =
      _$MyLearningModelImpl.fromJson;

  @override
  Map<String, dynamic> get course;
  @override
  String get userId;
  @override
  String get courseId;
  @override
  @JsonKey(ignore: true)
  _$$MyLearningModelImplCopyWith<_$MyLearningModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
