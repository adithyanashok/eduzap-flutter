// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mylearnings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MylearningsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) saveMyLearning,
    required TResult Function() getMyLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String courseId)? saveMyLearning,
    TResult? Function()? getMyLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? saveMyLearning,
    TResult Function()? getMyLearnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveMyLearning value) saveMyLearning,
    required TResult Function(_GetMyLearnings value) getMyLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveMyLearning value)? saveMyLearning,
    TResult? Function(_GetMyLearnings value)? getMyLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveMyLearning value)? saveMyLearning,
    TResult Function(_GetMyLearnings value)? getMyLearnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MylearningsEventCopyWith<$Res> {
  factory $MylearningsEventCopyWith(
          MylearningsEvent value, $Res Function(MylearningsEvent) then) =
      _$MylearningsEventCopyWithImpl<$Res, MylearningsEvent>;
}

/// @nodoc
class _$MylearningsEventCopyWithImpl<$Res, $Val extends MylearningsEvent>
    implements $MylearningsEventCopyWith<$Res> {
  _$MylearningsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveMyLearningImplCopyWith<$Res> {
  factory _$$SaveMyLearningImplCopyWith(_$SaveMyLearningImpl value,
          $Res Function(_$SaveMyLearningImpl) then) =
      __$$SaveMyLearningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseId});
}

/// @nodoc
class __$$SaveMyLearningImplCopyWithImpl<$Res>
    extends _$MylearningsEventCopyWithImpl<$Res, _$SaveMyLearningImpl>
    implements _$$SaveMyLearningImplCopyWith<$Res> {
  __$$SaveMyLearningImplCopyWithImpl(
      _$SaveMyLearningImpl _value, $Res Function(_$SaveMyLearningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$SaveMyLearningImpl(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveMyLearningImpl implements _SaveMyLearning {
  const _$SaveMyLearningImpl(this.courseId);

  @override
  final String courseId;

  @override
  String toString() {
    return 'MylearningsEvent.saveMyLearning(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveMyLearningImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveMyLearningImplCopyWith<_$SaveMyLearningImpl> get copyWith =>
      __$$SaveMyLearningImplCopyWithImpl<_$SaveMyLearningImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) saveMyLearning,
    required TResult Function() getMyLearnings,
  }) {
    return saveMyLearning(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String courseId)? saveMyLearning,
    TResult? Function()? getMyLearnings,
  }) {
    return saveMyLearning?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? saveMyLearning,
    TResult Function()? getMyLearnings,
    required TResult orElse(),
  }) {
    if (saveMyLearning != null) {
      return saveMyLearning(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveMyLearning value) saveMyLearning,
    required TResult Function(_GetMyLearnings value) getMyLearnings,
  }) {
    return saveMyLearning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveMyLearning value)? saveMyLearning,
    TResult? Function(_GetMyLearnings value)? getMyLearnings,
  }) {
    return saveMyLearning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveMyLearning value)? saveMyLearning,
    TResult Function(_GetMyLearnings value)? getMyLearnings,
    required TResult orElse(),
  }) {
    if (saveMyLearning != null) {
      return saveMyLearning(this);
    }
    return orElse();
  }
}

abstract class _SaveMyLearning implements MylearningsEvent {
  const factory _SaveMyLearning(final String courseId) = _$SaveMyLearningImpl;

  String get courseId;
  @JsonKey(ignore: true)
  _$$SaveMyLearningImplCopyWith<_$SaveMyLearningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMyLearningsImplCopyWith<$Res> {
  factory _$$GetMyLearningsImplCopyWith(_$GetMyLearningsImpl value,
          $Res Function(_$GetMyLearningsImpl) then) =
      __$$GetMyLearningsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyLearningsImplCopyWithImpl<$Res>
    extends _$MylearningsEventCopyWithImpl<$Res, _$GetMyLearningsImpl>
    implements _$$GetMyLearningsImplCopyWith<$Res> {
  __$$GetMyLearningsImplCopyWithImpl(
      _$GetMyLearningsImpl _value, $Res Function(_$GetMyLearningsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMyLearningsImpl implements _GetMyLearnings {
  const _$GetMyLearningsImpl();

  @override
  String toString() {
    return 'MylearningsEvent.getMyLearnings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyLearningsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String courseId) saveMyLearning,
    required TResult Function() getMyLearnings,
  }) {
    return getMyLearnings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String courseId)? saveMyLearning,
    TResult? Function()? getMyLearnings,
  }) {
    return getMyLearnings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String courseId)? saveMyLearning,
    TResult Function()? getMyLearnings,
    required TResult orElse(),
  }) {
    if (getMyLearnings != null) {
      return getMyLearnings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveMyLearning value) saveMyLearning,
    required TResult Function(_GetMyLearnings value) getMyLearnings,
  }) {
    return getMyLearnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveMyLearning value)? saveMyLearning,
    TResult? Function(_GetMyLearnings value)? getMyLearnings,
  }) {
    return getMyLearnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveMyLearning value)? saveMyLearning,
    TResult Function(_GetMyLearnings value)? getMyLearnings,
    required TResult orElse(),
  }) {
    if (getMyLearnings != null) {
      return getMyLearnings(this);
    }
    return orElse();
  }
}

abstract class _GetMyLearnings implements MylearningsEvent {
  const factory _GetMyLearnings() = _$GetMyLearningsImpl;
}

/// @nodoc
mixin _$MylearningsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MyLearningModel> get myLearningList =>
      throw _privateConstructorUsedError;
  MyLearningModel get myLearning => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<MyLearningModel>>> get myLearningListOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailures, MyLearningModel>> get myLearningOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MylearningsStateCopyWith<MylearningsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MylearningsStateCopyWith<$Res> {
  factory $MylearningsStateCopyWith(
          MylearningsState value, $Res Function(MylearningsState) then) =
      _$MylearningsStateCopyWithImpl<$Res, MylearningsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<MyLearningModel> myLearningList,
      MyLearningModel myLearning,
      Option<Either<MainFailures, List<MyLearningModel>>> myLearningListOpt,
      Option<Either<MainFailures, MyLearningModel>> myLearningOpt});

  $MyLearningModelCopyWith<$Res> get myLearning;
}

/// @nodoc
class _$MylearningsStateCopyWithImpl<$Res, $Val extends MylearningsState>
    implements $MylearningsStateCopyWith<$Res> {
  _$MylearningsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? myLearningList = null,
    Object? myLearning = null,
    Object? myLearningListOpt = null,
    Object? myLearningOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      myLearningList: null == myLearningList
          ? _value.myLearningList
          : myLearningList // ignore: cast_nullable_to_non_nullable
              as List<MyLearningModel>,
      myLearning: null == myLearning
          ? _value.myLearning
          : myLearning // ignore: cast_nullable_to_non_nullable
              as MyLearningModel,
      myLearningListOpt: null == myLearningListOpt
          ? _value.myLearningListOpt
          : myLearningListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MyLearningModel>>>,
      myLearningOpt: null == myLearningOpt
          ? _value.myLearningOpt
          : myLearningOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, MyLearningModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyLearningModelCopyWith<$Res> get myLearning {
    return $MyLearningModelCopyWith<$Res>(_value.myLearning, (value) {
      return _then(_value.copyWith(myLearning: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MylearningsStateImplCopyWith<$Res>
    implements $MylearningsStateCopyWith<$Res> {
  factory _$$MylearningsStateImplCopyWith(_$MylearningsStateImpl value,
          $Res Function(_$MylearningsStateImpl) then) =
      __$$MylearningsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<MyLearningModel> myLearningList,
      MyLearningModel myLearning,
      Option<Either<MainFailures, List<MyLearningModel>>> myLearningListOpt,
      Option<Either<MainFailures, MyLearningModel>> myLearningOpt});

  @override
  $MyLearningModelCopyWith<$Res> get myLearning;
}

/// @nodoc
class __$$MylearningsStateImplCopyWithImpl<$Res>
    extends _$MylearningsStateCopyWithImpl<$Res, _$MylearningsStateImpl>
    implements _$$MylearningsStateImplCopyWith<$Res> {
  __$$MylearningsStateImplCopyWithImpl(_$MylearningsStateImpl _value,
      $Res Function(_$MylearningsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? myLearningList = null,
    Object? myLearning = null,
    Object? myLearningListOpt = null,
    Object? myLearningOpt = null,
  }) {
    return _then(_$MylearningsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      myLearningList: null == myLearningList
          ? _value._myLearningList
          : myLearningList // ignore: cast_nullable_to_non_nullable
              as List<MyLearningModel>,
      myLearning: null == myLearning
          ? _value.myLearning
          : myLearning // ignore: cast_nullable_to_non_nullable
              as MyLearningModel,
      myLearningListOpt: null == myLearningListOpt
          ? _value.myLearningListOpt
          : myLearningListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MyLearningModel>>>,
      myLearningOpt: null == myLearningOpt
          ? _value.myLearningOpt
          : myLearningOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, MyLearningModel>>,
    ));
  }
}

/// @nodoc

class _$MylearningsStateImpl implements _MylearningsState {
  const _$MylearningsStateImpl(
      {required this.isLoading,
      required final List<MyLearningModel> myLearningList,
      required this.myLearning,
      required this.myLearningListOpt,
      required this.myLearningOpt})
      : _myLearningList = myLearningList;

  @override
  final bool isLoading;
  final List<MyLearningModel> _myLearningList;
  @override
  List<MyLearningModel> get myLearningList {
    if (_myLearningList is EqualUnmodifiableListView) return _myLearningList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myLearningList);
  }

  @override
  final MyLearningModel myLearning;
  @override
  final Option<Either<MainFailures, List<MyLearningModel>>> myLearningListOpt;
  @override
  final Option<Either<MainFailures, MyLearningModel>> myLearningOpt;

  @override
  String toString() {
    return 'MylearningsState(isLoading: $isLoading, myLearningList: $myLearningList, myLearning: $myLearning, myLearningListOpt: $myLearningListOpt, myLearningOpt: $myLearningOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MylearningsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._myLearningList, _myLearningList) &&
            (identical(other.myLearning, myLearning) ||
                other.myLearning == myLearning) &&
            (identical(other.myLearningListOpt, myLearningListOpt) ||
                other.myLearningListOpt == myLearningListOpt) &&
            (identical(other.myLearningOpt, myLearningOpt) ||
                other.myLearningOpt == myLearningOpt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_myLearningList),
      myLearning,
      myLearningListOpt,
      myLearningOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MylearningsStateImplCopyWith<_$MylearningsStateImpl> get copyWith =>
      __$$MylearningsStateImplCopyWithImpl<_$MylearningsStateImpl>(
          this, _$identity);
}

abstract class _MylearningsState implements MylearningsState {
  const factory _MylearningsState(
      {required final bool isLoading,
      required final List<MyLearningModel> myLearningList,
      required final MyLearningModel myLearning,
      required final Option<Either<MainFailures, List<MyLearningModel>>>
          myLearningListOpt,
      required final Option<Either<MainFailures, MyLearningModel>>
          myLearningOpt}) = _$MylearningsStateImpl;

  @override
  bool get isLoading;
  @override
  List<MyLearningModel> get myLearningList;
  @override
  MyLearningModel get myLearning;
  @override
  Option<Either<MainFailures, List<MyLearningModel>>> get myLearningListOpt;
  @override
  Option<Either<MainFailures, MyLearningModel>> get myLearningOpt;
  @override
  @JsonKey(ignore: true)
  _$$MylearningsStateImplCopyWith<_$MylearningsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
