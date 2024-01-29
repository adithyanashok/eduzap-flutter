// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedCourseModel _$SavedCourseModelFromJson(Map<String, dynamic> json) {
  return _SavedCourseModel.fromJson(json);
}

/// @nodoc
mixin _$SavedCourseModel {
  Map<String, dynamic> get course => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedCourseModelCopyWith<SavedCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedCourseModelCopyWith<$Res> {
  factory $SavedCourseModelCopyWith(
          SavedCourseModel value, $Res Function(SavedCourseModel) then) =
      _$SavedCourseModelCopyWithImpl<$Res, SavedCourseModel>;
  @useResult
  $Res call(
      {Map<String, dynamic> course, String userId, String courseId, String id});
}

/// @nodoc
class _$SavedCourseModelCopyWithImpl<$Res, $Val extends SavedCourseModel>
    implements $SavedCourseModelCopyWith<$Res> {
  _$SavedCourseModelCopyWithImpl(this._value, this._then);

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
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedCourseModelImplCopyWith<$Res>
    implements $SavedCourseModelCopyWith<$Res> {
  factory _$$SavedCourseModelImplCopyWith(_$SavedCourseModelImpl value,
          $Res Function(_$SavedCourseModelImpl) then) =
      __$$SavedCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> course, String userId, String courseId, String id});
}

/// @nodoc
class __$$SavedCourseModelImplCopyWithImpl<$Res>
    extends _$SavedCourseModelCopyWithImpl<$Res, _$SavedCourseModelImpl>
    implements _$$SavedCourseModelImplCopyWith<$Res> {
  __$$SavedCourseModelImplCopyWithImpl(_$SavedCourseModelImpl _value,
      $Res Function(_$SavedCourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
    Object? userId = null,
    Object? courseId = null,
    Object? id = null,
  }) {
    return _then(_$SavedCourseModelImpl(
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedCourseModelImpl implements _SavedCourseModel {
  const _$SavedCourseModelImpl(
      {required final Map<String, dynamic> course,
      required this.userId,
      required this.courseId,
      required this.id})
      : _course = course;

  factory _$SavedCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedCourseModelImplFromJson(json);

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
  final String id;

  @override
  String toString() {
    return 'SavedCourseModel(course: $course, userId: $userId, courseId: $courseId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedCourseModelImpl &&
            const DeepCollectionEquality().equals(other._course, _course) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_course), userId, courseId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedCourseModelImplCopyWith<_$SavedCourseModelImpl> get copyWith =>
      __$$SavedCourseModelImplCopyWithImpl<_$SavedCourseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedCourseModelImplToJson(
      this,
    );
  }
}

abstract class _SavedCourseModel implements SavedCourseModel {
  const factory _SavedCourseModel(
      {required final Map<String, dynamic> course,
      required final String userId,
      required final String courseId,
      required final String id}) = _$SavedCourseModelImpl;

  factory _SavedCourseModel.fromJson(Map<String, dynamic> json) =
      _$SavedCourseModelImpl.fromJson;

  @override
  Map<String, dynamic> get course;
  @override
  String get userId;
  @override
  String get courseId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$SavedCourseModelImplCopyWith<_$SavedCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
