// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavedCourseModel savedCourseModel) saveCourse,
    required TResult Function() getSavedList,
    required TResult Function(String courseId) getSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult? Function()? getSavedList,
    TResult? Function(String courseId)? getSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult Function()? getSavedList,
    TResult Function(String courseId)? getSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCourse value) saveCourse,
    required TResult Function(_GetSavedList value) getSavedList,
    required TResult Function(_GetSaved value) getSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCourse value)? saveCourse,
    TResult? Function(_GetSavedList value)? getSavedList,
    TResult? Function(_GetSaved value)? getSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCourse value)? saveCourse,
    TResult Function(_GetSavedList value)? getSavedList,
    TResult Function(_GetSaved value)? getSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedEventCopyWith<$Res> {
  factory $SavedEventCopyWith(
          SavedEvent value, $Res Function(SavedEvent) then) =
      _$SavedEventCopyWithImpl<$Res, SavedEvent>;
}

/// @nodoc
class _$SavedEventCopyWithImpl<$Res, $Val extends SavedEvent>
    implements $SavedEventCopyWith<$Res> {
  _$SavedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveCourseImplCopyWith<$Res> {
  factory _$$SaveCourseImplCopyWith(
          _$SaveCourseImpl value, $Res Function(_$SaveCourseImpl) then) =
      __$$SaveCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SavedCourseModel savedCourseModel});

  $SavedCourseModelCopyWith<$Res> get savedCourseModel;
}

/// @nodoc
class __$$SaveCourseImplCopyWithImpl<$Res>
    extends _$SavedEventCopyWithImpl<$Res, _$SaveCourseImpl>
    implements _$$SaveCourseImplCopyWith<$Res> {
  __$$SaveCourseImplCopyWithImpl(
      _$SaveCourseImpl _value, $Res Function(_$SaveCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedCourseModel = null,
  }) {
    return _then(_$SaveCourseImpl(
      null == savedCourseModel
          ? _value.savedCourseModel
          : savedCourseModel // ignore: cast_nullable_to_non_nullable
              as SavedCourseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SavedCourseModelCopyWith<$Res> get savedCourseModel {
    return $SavedCourseModelCopyWith<$Res>(_value.savedCourseModel, (value) {
      return _then(_value.copyWith(savedCourseModel: value));
    });
  }
}

/// @nodoc

class _$SaveCourseImpl implements _SaveCourse {
  const _$SaveCourseImpl(this.savedCourseModel);

  @override
  final SavedCourseModel savedCourseModel;

  @override
  String toString() {
    return 'SavedEvent.saveCourse(savedCourseModel: $savedCourseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCourseImpl &&
            (identical(other.savedCourseModel, savedCourseModel) ||
                other.savedCourseModel == savedCourseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedCourseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCourseImplCopyWith<_$SaveCourseImpl> get copyWith =>
      __$$SaveCourseImplCopyWithImpl<_$SaveCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavedCourseModel savedCourseModel) saveCourse,
    required TResult Function() getSavedList,
    required TResult Function(String courseId) getSaved,
  }) {
    return saveCourse(savedCourseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult? Function()? getSavedList,
    TResult? Function(String courseId)? getSaved,
  }) {
    return saveCourse?.call(savedCourseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult Function()? getSavedList,
    TResult Function(String courseId)? getSaved,
    required TResult orElse(),
  }) {
    if (saveCourse != null) {
      return saveCourse(savedCourseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCourse value) saveCourse,
    required TResult Function(_GetSavedList value) getSavedList,
    required TResult Function(_GetSaved value) getSaved,
  }) {
    return saveCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCourse value)? saveCourse,
    TResult? Function(_GetSavedList value)? getSavedList,
    TResult? Function(_GetSaved value)? getSaved,
  }) {
    return saveCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCourse value)? saveCourse,
    TResult Function(_GetSavedList value)? getSavedList,
    TResult Function(_GetSaved value)? getSaved,
    required TResult orElse(),
  }) {
    if (saveCourse != null) {
      return saveCourse(this);
    }
    return orElse();
  }
}

abstract class _SaveCourse implements SavedEvent {
  const factory _SaveCourse(final SavedCourseModel savedCourseModel) =
      _$SaveCourseImpl;

  SavedCourseModel get savedCourseModel;
  @JsonKey(ignore: true)
  _$$SaveCourseImplCopyWith<_$SaveCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSavedListImplCopyWith<$Res> {
  factory _$$GetSavedListImplCopyWith(
          _$GetSavedListImpl value, $Res Function(_$GetSavedListImpl) then) =
      __$$GetSavedListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSavedListImplCopyWithImpl<$Res>
    extends _$SavedEventCopyWithImpl<$Res, _$GetSavedListImpl>
    implements _$$GetSavedListImplCopyWith<$Res> {
  __$$GetSavedListImplCopyWithImpl(
      _$GetSavedListImpl _value, $Res Function(_$GetSavedListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSavedListImpl implements _GetSavedList {
  const _$GetSavedListImpl();

  @override
  String toString() {
    return 'SavedEvent.getSavedList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSavedListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavedCourseModel savedCourseModel) saveCourse,
    required TResult Function() getSavedList,
    required TResult Function(String courseId) getSaved,
  }) {
    return getSavedList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult? Function()? getSavedList,
    TResult? Function(String courseId)? getSaved,
  }) {
    return getSavedList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult Function()? getSavedList,
    TResult Function(String courseId)? getSaved,
    required TResult orElse(),
  }) {
    if (getSavedList != null) {
      return getSavedList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCourse value) saveCourse,
    required TResult Function(_GetSavedList value) getSavedList,
    required TResult Function(_GetSaved value) getSaved,
  }) {
    return getSavedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCourse value)? saveCourse,
    TResult? Function(_GetSavedList value)? getSavedList,
    TResult? Function(_GetSaved value)? getSaved,
  }) {
    return getSavedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCourse value)? saveCourse,
    TResult Function(_GetSavedList value)? getSavedList,
    TResult Function(_GetSaved value)? getSaved,
    required TResult orElse(),
  }) {
    if (getSavedList != null) {
      return getSavedList(this);
    }
    return orElse();
  }
}

abstract class _GetSavedList implements SavedEvent {
  const factory _GetSavedList() = _$GetSavedListImpl;
}

/// @nodoc
abstract class _$$GetSavedImplCopyWith<$Res> {
  factory _$$GetSavedImplCopyWith(
          _$GetSavedImpl value, $Res Function(_$GetSavedImpl) then) =
      __$$GetSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseId});
}

/// @nodoc
class __$$GetSavedImplCopyWithImpl<$Res>
    extends _$SavedEventCopyWithImpl<$Res, _$GetSavedImpl>
    implements _$$GetSavedImplCopyWith<$Res> {
  __$$GetSavedImplCopyWithImpl(
      _$GetSavedImpl _value, $Res Function(_$GetSavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$GetSavedImpl(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSavedImpl implements _GetSaved {
  const _$GetSavedImpl(this.courseId);

  @override
  final String courseId;

  @override
  String toString() {
    return 'SavedEvent.getSaved(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSavedImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSavedImplCopyWith<_$GetSavedImpl> get copyWith =>
      __$$GetSavedImplCopyWithImpl<_$GetSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavedCourseModel savedCourseModel) saveCourse,
    required TResult Function() getSavedList,
    required TResult Function(String courseId) getSaved,
  }) {
    return getSaved(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult? Function()? getSavedList,
    TResult? Function(String courseId)? getSaved,
  }) {
    return getSaved?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavedCourseModel savedCourseModel)? saveCourse,
    TResult Function()? getSavedList,
    TResult Function(String courseId)? getSaved,
    required TResult orElse(),
  }) {
    if (getSaved != null) {
      return getSaved(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCourse value) saveCourse,
    required TResult Function(_GetSavedList value) getSavedList,
    required TResult Function(_GetSaved value) getSaved,
  }) {
    return getSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCourse value)? saveCourse,
    TResult? Function(_GetSavedList value)? getSavedList,
    TResult? Function(_GetSaved value)? getSaved,
  }) {
    return getSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCourse value)? saveCourse,
    TResult Function(_GetSavedList value)? getSavedList,
    TResult Function(_GetSaved value)? getSaved,
    required TResult orElse(),
  }) {
    if (getSaved != null) {
      return getSaved(this);
    }
    return orElse();
  }
}

abstract class _GetSaved implements SavedEvent {
  const factory _GetSaved(final String courseId) = _$GetSavedImpl;

  String get courseId;
  @JsonKey(ignore: true)
  _$$GetSavedImplCopyWith<_$GetSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavedState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  SavedCourseModel get savedCourse => throw _privateConstructorUsedError;
  Option<Either<MainFailures, SavedCourseModel>> get saveCourseOpt =>
      throw _privateConstructorUsedError;
  List<SavedCourseModel> get savedCourseList =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<SavedCourseModel>>> get saveCourseListOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedStateCopyWith<SavedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedStateCopyWith<$Res> {
  factory $SavedStateCopyWith(
          SavedState value, $Res Function(SavedState) then) =
      _$SavedStateCopyWithImpl<$Res, SavedState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool success,
      SavedCourseModel savedCourse,
      Option<Either<MainFailures, SavedCourseModel>> saveCourseOpt,
      List<SavedCourseModel> savedCourseList,
      Option<Either<MainFailures, List<SavedCourseModel>>> saveCourseListOpt});

  $SavedCourseModelCopyWith<$Res> get savedCourse;
}

/// @nodoc
class _$SavedStateCopyWithImpl<$Res, $Val extends SavedState>
    implements $SavedStateCopyWith<$Res> {
  _$SavedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? success = null,
    Object? savedCourse = null,
    Object? saveCourseOpt = null,
    Object? savedCourseList = null,
    Object? saveCourseListOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      savedCourse: null == savedCourse
          ? _value.savedCourse
          : savedCourse // ignore: cast_nullable_to_non_nullable
              as SavedCourseModel,
      saveCourseOpt: null == saveCourseOpt
          ? _value.saveCourseOpt
          : saveCourseOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, SavedCourseModel>>,
      savedCourseList: null == savedCourseList
          ? _value.savedCourseList
          : savedCourseList // ignore: cast_nullable_to_non_nullable
              as List<SavedCourseModel>,
      saveCourseListOpt: null == saveCourseListOpt
          ? _value.saveCourseListOpt
          : saveCourseListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<SavedCourseModel>>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SavedCourseModelCopyWith<$Res> get savedCourse {
    return $SavedCourseModelCopyWith<$Res>(_value.savedCourse, (value) {
      return _then(_value.copyWith(savedCourse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SavedStateImplCopyWith<$Res>
    implements $SavedStateCopyWith<$Res> {
  factory _$$SavedStateImplCopyWith(
          _$SavedStateImpl value, $Res Function(_$SavedStateImpl) then) =
      __$$SavedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool success,
      SavedCourseModel savedCourse,
      Option<Either<MainFailures, SavedCourseModel>> saveCourseOpt,
      List<SavedCourseModel> savedCourseList,
      Option<Either<MainFailures, List<SavedCourseModel>>> saveCourseListOpt});

  @override
  $SavedCourseModelCopyWith<$Res> get savedCourse;
}

/// @nodoc
class __$$SavedStateImplCopyWithImpl<$Res>
    extends _$SavedStateCopyWithImpl<$Res, _$SavedStateImpl>
    implements _$$SavedStateImplCopyWith<$Res> {
  __$$SavedStateImplCopyWithImpl(
      _$SavedStateImpl _value, $Res Function(_$SavedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? success = null,
    Object? savedCourse = null,
    Object? saveCourseOpt = null,
    Object? savedCourseList = null,
    Object? saveCourseListOpt = null,
  }) {
    return _then(_$SavedStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      savedCourse: null == savedCourse
          ? _value.savedCourse
          : savedCourse // ignore: cast_nullable_to_non_nullable
              as SavedCourseModel,
      saveCourseOpt: null == saveCourseOpt
          ? _value.saveCourseOpt
          : saveCourseOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, SavedCourseModel>>,
      savedCourseList: null == savedCourseList
          ? _value._savedCourseList
          : savedCourseList // ignore: cast_nullable_to_non_nullable
              as List<SavedCourseModel>,
      saveCourseListOpt: null == saveCourseListOpt
          ? _value.saveCourseListOpt
          : saveCourseListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<SavedCourseModel>>>,
    ));
  }
}

/// @nodoc

class _$SavedStateImpl implements _SavedState {
  const _$SavedStateImpl(
      {required this.isLoading,
      required this.success,
      required this.savedCourse,
      required this.saveCourseOpt,
      required final List<SavedCourseModel> savedCourseList,
      required this.saveCourseListOpt})
      : _savedCourseList = savedCourseList;

  @override
  final bool isLoading;
  @override
  final bool success;
  @override
  final SavedCourseModel savedCourse;
  @override
  final Option<Either<MainFailures, SavedCourseModel>> saveCourseOpt;
  final List<SavedCourseModel> _savedCourseList;
  @override
  List<SavedCourseModel> get savedCourseList {
    if (_savedCourseList is EqualUnmodifiableListView) return _savedCourseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedCourseList);
  }

  @override
  final Option<Either<MainFailures, List<SavedCourseModel>>> saveCourseListOpt;

  @override
  String toString() {
    return 'SavedState(isLoading: $isLoading, success: $success, savedCourse: $savedCourse, saveCourseOpt: $saveCourseOpt, savedCourseList: $savedCourseList, saveCourseListOpt: $saveCourseListOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.savedCourse, savedCourse) ||
                other.savedCourse == savedCourse) &&
            (identical(other.saveCourseOpt, saveCourseOpt) ||
                other.saveCourseOpt == saveCourseOpt) &&
            const DeepCollectionEquality()
                .equals(other._savedCourseList, _savedCourseList) &&
            (identical(other.saveCourseListOpt, saveCourseListOpt) ||
                other.saveCourseListOpt == saveCourseListOpt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      success,
      savedCourse,
      saveCourseOpt,
      const DeepCollectionEquality().hash(_savedCourseList),
      saveCourseListOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedStateImplCopyWith<_$SavedStateImpl> get copyWith =>
      __$$SavedStateImplCopyWithImpl<_$SavedStateImpl>(this, _$identity);
}

abstract class _SavedState implements SavedState {
  const factory _SavedState(
      {required final bool isLoading,
      required final bool success,
      required final SavedCourseModel savedCourse,
      required final Option<Either<MainFailures, SavedCourseModel>>
          saveCourseOpt,
      required final List<SavedCourseModel> savedCourseList,
      required final Option<Either<MainFailures, List<SavedCourseModel>>>
          saveCourseListOpt}) = _$SavedStateImpl;

  @override
  bool get isLoading;
  @override
  bool get success;
  @override
  SavedCourseModel get savedCourse;
  @override
  Option<Either<MainFailures, SavedCourseModel>> get saveCourseOpt;
  @override
  List<SavedCourseModel> get savedCourseList;
  @override
  Option<Either<MainFailures, List<SavedCourseModel>>> get saveCourseListOpt;
  @override
  @JsonKey(ignore: true)
  _$$SavedStateImplCopyWith<_$SavedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
