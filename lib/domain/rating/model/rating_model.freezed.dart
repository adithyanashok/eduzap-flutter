// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) {
  return _RatingModel.fromJson(json);
}

/// @nodoc
mixin _$RatingModel {
  String get profile => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get ratingString => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingModelCopyWith<RatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingModelCopyWith<$Res> {
  factory $RatingModelCopyWith(
          RatingModel value, $Res Function(RatingModel) then) =
      _$RatingModelCopyWithImpl<$Res, RatingModel>;
  @useResult
  $Res call(
      {String profile,
      String name,
      double rating,
      String ratingString,
      String courseId,
      String? id});
}

/// @nodoc
class _$RatingModelCopyWithImpl<$Res, $Val extends RatingModel>
    implements $RatingModelCopyWith<$Res> {
  _$RatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? name = null,
    Object? rating = null,
    Object? ratingString = null,
    Object? courseId = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingString: null == ratingString
          ? _value.ratingString
          : ratingString // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingModelImplCopyWith<$Res>
    implements $RatingModelCopyWith<$Res> {
  factory _$$RatingModelImplCopyWith(
          _$RatingModelImpl value, $Res Function(_$RatingModelImpl) then) =
      __$$RatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String profile,
      String name,
      double rating,
      String ratingString,
      String courseId,
      String? id});
}

/// @nodoc
class __$$RatingModelImplCopyWithImpl<$Res>
    extends _$RatingModelCopyWithImpl<$Res, _$RatingModelImpl>
    implements _$$RatingModelImplCopyWith<$Res> {
  __$$RatingModelImplCopyWithImpl(
      _$RatingModelImpl _value, $Res Function(_$RatingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? name = null,
    Object? rating = null,
    Object? ratingString = null,
    Object? courseId = null,
    Object? id = freezed,
  }) {
    return _then(_$RatingModelImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingString: null == ratingString
          ? _value.ratingString
          : ratingString // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingModelImpl implements _RatingModel {
  const _$RatingModelImpl(
      {required this.profile,
      required this.name,
      required this.rating,
      required this.ratingString,
      required this.courseId,
      this.id});

  factory _$RatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingModelImplFromJson(json);

  @override
  final String profile;
  @override
  final String name;
  @override
  final double rating;
  @override
  final String ratingString;
  @override
  final String courseId;
  @override
  final String? id;

  @override
  String toString() {
    return 'RatingModel(profile: $profile, name: $name, rating: $rating, ratingString: $ratingString, courseId: $courseId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingModelImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingString, ratingString) ||
                other.ratingString == ratingString) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, profile, name, rating, ratingString, courseId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      __$$RatingModelImplCopyWithImpl<_$RatingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingModelImplToJson(
      this,
    );
  }
}

abstract class _RatingModel implements RatingModel {
  const factory _RatingModel(
      {required final String profile,
      required final String name,
      required final double rating,
      required final String ratingString,
      required final String courseId,
      final String? id}) = _$RatingModelImpl;

  factory _RatingModel.fromJson(Map<String, dynamic> json) =
      _$RatingModelImpl.fromJson;

  @override
  String get profile;
  @override
  String get name;
  @override
  double get rating;
  @override
  String get ratingString;
  @override
  String get courseId;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
