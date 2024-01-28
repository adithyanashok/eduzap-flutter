// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel rating) addRating,
    required TResult Function() clear,
    required TResult Function(String courseId) getRatingByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel rating)? addRating,
    TResult? Function()? clear,
    TResult? Function(String courseId)? getRatingByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel rating)? addRating,
    TResult Function()? clear,
    TResult Function(String courseId)? getRatingByCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRating value) addRating,
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetRatingByCourse value) getRatingByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRating value)? addRating,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetRatingByCourse value)? getRatingByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRating value)? addRating,
    TResult Function(_Clear value)? clear,
    TResult Function(_GetRatingByCourse value)? getRatingByCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingEventCopyWith<$Res> {
  factory $RatingEventCopyWith(
          RatingEvent value, $Res Function(RatingEvent) then) =
      _$RatingEventCopyWithImpl<$Res, RatingEvent>;
}

/// @nodoc
class _$RatingEventCopyWithImpl<$Res, $Val extends RatingEvent>
    implements $RatingEventCopyWith<$Res> {
  _$RatingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddRatingImplCopyWith<$Res> {
  factory _$$AddRatingImplCopyWith(
          _$AddRatingImpl value, $Res Function(_$AddRatingImpl) then) =
      __$$AddRatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RatingModel rating});

  $RatingModelCopyWith<$Res> get rating;
}

/// @nodoc
class __$$AddRatingImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$AddRatingImpl>
    implements _$$AddRatingImplCopyWith<$Res> {
  __$$AddRatingImplCopyWithImpl(
      _$AddRatingImpl _value, $Res Function(_$AddRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_$AddRatingImpl(
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res> get rating {
    return $RatingModelCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }
}

/// @nodoc

class _$AddRatingImpl implements _AddRating {
  const _$AddRatingImpl(this.rating);

  @override
  final RatingModel rating;

  @override
  String toString() {
    return 'RatingEvent.addRating(rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRatingImpl &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRatingImplCopyWith<_$AddRatingImpl> get copyWith =>
      __$$AddRatingImplCopyWithImpl<_$AddRatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel rating) addRating,
    required TResult Function() clear,
    required TResult Function(String courseId) getRatingByCourse,
  }) {
    return addRating(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel rating)? addRating,
    TResult? Function()? clear,
    TResult? Function(String courseId)? getRatingByCourse,
  }) {
    return addRating?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel rating)? addRating,
    TResult Function()? clear,
    TResult Function(String courseId)? getRatingByCourse,
    required TResult orElse(),
  }) {
    if (addRating != null) {
      return addRating(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRating value) addRating,
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetRatingByCourse value) getRatingByCourse,
  }) {
    return addRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRating value)? addRating,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetRatingByCourse value)? getRatingByCourse,
  }) {
    return addRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRating value)? addRating,
    TResult Function(_Clear value)? clear,
    TResult Function(_GetRatingByCourse value)? getRatingByCourse,
    required TResult orElse(),
  }) {
    if (addRating != null) {
      return addRating(this);
    }
    return orElse();
  }
}

abstract class _AddRating implements RatingEvent {
  const factory _AddRating(final RatingModel rating) = _$AddRatingImpl;

  RatingModel get rating;
  @JsonKey(ignore: true)
  _$$AddRatingImplCopyWith<_$AddRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'RatingEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel rating) addRating,
    required TResult Function() clear,
    required TResult Function(String courseId) getRatingByCourse,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel rating)? addRating,
    TResult? Function()? clear,
    TResult? Function(String courseId)? getRatingByCourse,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel rating)? addRating,
    TResult Function()? clear,
    TResult Function(String courseId)? getRatingByCourse,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRating value) addRating,
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetRatingByCourse value) getRatingByCourse,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRating value)? addRating,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetRatingByCourse value)? getRatingByCourse,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRating value)? addRating,
    TResult Function(_Clear value)? clear,
    TResult Function(_GetRatingByCourse value)? getRatingByCourse,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements RatingEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$GetRatingByCourseImplCopyWith<$Res> {
  factory _$$GetRatingByCourseImplCopyWith(_$GetRatingByCourseImpl value,
          $Res Function(_$GetRatingByCourseImpl) then) =
      __$$GetRatingByCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseId});
}

/// @nodoc
class __$$GetRatingByCourseImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$GetRatingByCourseImpl>
    implements _$$GetRatingByCourseImplCopyWith<$Res> {
  __$$GetRatingByCourseImplCopyWithImpl(_$GetRatingByCourseImpl _value,
      $Res Function(_$GetRatingByCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$GetRatingByCourseImpl(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRatingByCourseImpl implements _GetRatingByCourse {
  const _$GetRatingByCourseImpl(this.courseId);

  @override
  final String courseId;

  @override
  String toString() {
    return 'RatingEvent.getRatingByCourse(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRatingByCourseImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRatingByCourseImplCopyWith<_$GetRatingByCourseImpl> get copyWith =>
      __$$GetRatingByCourseImplCopyWithImpl<_$GetRatingByCourseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel rating) addRating,
    required TResult Function() clear,
    required TResult Function(String courseId) getRatingByCourse,
  }) {
    return getRatingByCourse(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel rating)? addRating,
    TResult? Function()? clear,
    TResult? Function(String courseId)? getRatingByCourse,
  }) {
    return getRatingByCourse?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel rating)? addRating,
    TResult Function()? clear,
    TResult Function(String courseId)? getRatingByCourse,
    required TResult orElse(),
  }) {
    if (getRatingByCourse != null) {
      return getRatingByCourse(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRating value) addRating,
    required TResult Function(_Clear value) clear,
    required TResult Function(_GetRatingByCourse value) getRatingByCourse,
  }) {
    return getRatingByCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRating value)? addRating,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_GetRatingByCourse value)? getRatingByCourse,
  }) {
    return getRatingByCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRating value)? addRating,
    TResult Function(_Clear value)? clear,
    TResult Function(_GetRatingByCourse value)? getRatingByCourse,
    required TResult orElse(),
  }) {
    if (getRatingByCourse != null) {
      return getRatingByCourse(this);
    }
    return orElse();
  }
}

abstract class _GetRatingByCourse implements RatingEvent {
  const factory _GetRatingByCourse(final String courseId) =
      _$GetRatingByCourseImpl;

  String get courseId;
  @JsonKey(ignore: true)
  _$$GetRatingByCourseImplCopyWith<_$GetRatingByCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RatingState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;
  RatingModel? get rating => throw _privateConstructorUsedError;
  Option<Either<MainFailures, RatingModel>> get ratingOpt =>
      throw _privateConstructorUsedError;
  List<RatingModel> get ratings => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<RatingModel>>> get ratingsOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingStateCopyWith<RatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingStateCopyWith<$Res> {
  factory $RatingStateCopyWith(
          RatingState value, $Res Function(RatingState) then) =
      _$RatingStateCopyWithImpl<$Res, RatingState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorText,
      RatingModel? rating,
      Option<Either<MainFailures, RatingModel>> ratingOpt,
      List<RatingModel> ratings,
      Option<Either<MainFailures, List<RatingModel>>> ratingsOpt});

  $RatingModelCopyWith<$Res>? get rating;
}

/// @nodoc
class _$RatingStateCopyWithImpl<$Res, $Val extends RatingState>
    implements $RatingStateCopyWith<$Res> {
  _$RatingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorText = freezed,
    Object? rating = freezed,
    Object? ratingOpt = null,
    Object? ratings = null,
    Object? ratingsOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      ratingOpt: null == ratingOpt
          ? _value.ratingOpt
          : ratingOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, RatingModel>>,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      ratingsOpt: null == ratingsOpt
          ? _value.ratingsOpt
          : ratingsOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<RatingModel>>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingModelCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingStateImplCopyWith<$Res>
    implements $RatingStateCopyWith<$Res> {
  factory _$$RatingStateImplCopyWith(
          _$RatingStateImpl value, $Res Function(_$RatingStateImpl) then) =
      __$$RatingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorText,
      RatingModel? rating,
      Option<Either<MainFailures, RatingModel>> ratingOpt,
      List<RatingModel> ratings,
      Option<Either<MainFailures, List<RatingModel>>> ratingsOpt});

  @override
  $RatingModelCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$RatingStateImplCopyWithImpl<$Res>
    extends _$RatingStateCopyWithImpl<$Res, _$RatingStateImpl>
    implements _$$RatingStateImplCopyWith<$Res> {
  __$$RatingStateImplCopyWithImpl(
      _$RatingStateImpl _value, $Res Function(_$RatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorText = freezed,
    Object? rating = freezed,
    Object? ratingOpt = null,
    Object? ratings = null,
    Object? ratingsOpt = null,
  }) {
    return _then(_$RatingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      ratingOpt: null == ratingOpt
          ? _value.ratingOpt
          : ratingOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, RatingModel>>,
      ratings: null == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      ratingsOpt: null == ratingsOpt
          ? _value.ratingsOpt
          : ratingsOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<RatingModel>>>,
    ));
  }
}

/// @nodoc

class _$RatingStateImpl implements _RatingState {
  const _$RatingStateImpl(
      {required this.isLoading,
      this.errorText,
      this.rating,
      required this.ratingOpt,
      required final List<RatingModel> ratings,
      required this.ratingsOpt})
      : _ratings = ratings;

  @override
  final bool isLoading;
  @override
  final String? errorText;
  @override
  final RatingModel? rating;
  @override
  final Option<Either<MainFailures, RatingModel>> ratingOpt;
  final List<RatingModel> _ratings;
  @override
  List<RatingModel> get ratings {
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratings);
  }

  @override
  final Option<Either<MainFailures, List<RatingModel>>> ratingsOpt;

  @override
  String toString() {
    return 'RatingState(isLoading: $isLoading, errorText: $errorText, rating: $rating, ratingOpt: $ratingOpt, ratings: $ratings, ratingsOpt: $ratingsOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingOpt, ratingOpt) ||
                other.ratingOpt == ratingOpt) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            (identical(other.ratingsOpt, ratingsOpt) ||
                other.ratingsOpt == ratingsOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorText, rating,
      ratingOpt, const DeepCollectionEquality().hash(_ratings), ratingsOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingStateImplCopyWith<_$RatingStateImpl> get copyWith =>
      __$$RatingStateImplCopyWithImpl<_$RatingStateImpl>(this, _$identity);
}

abstract class _RatingState implements RatingState {
  const factory _RatingState(
      {required final bool isLoading,
      final String? errorText,
      final RatingModel? rating,
      required final Option<Either<MainFailures, RatingModel>> ratingOpt,
      required final List<RatingModel> ratings,
      required final Option<Either<MainFailures, List<RatingModel>>>
          ratingsOpt}) = _$RatingStateImpl;

  @override
  bool get isLoading;
  @override
  String? get errorText;
  @override
  RatingModel? get rating;
  @override
  Option<Either<MainFailures, RatingModel>> get ratingOpt;
  @override
  List<RatingModel> get ratings;
  @override
  Option<Either<MainFailures, List<RatingModel>>> get ratingsOpt;
  @override
  @JsonKey(ignore: true)
  _$$RatingStateImplCopyWith<_$RatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
