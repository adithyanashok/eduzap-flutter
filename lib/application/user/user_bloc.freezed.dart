// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function() getAllStudents,
    required TResult Function() updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function()? getAllStudents,
    TResult? Function()? updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function()? getAllStudents,
    TResult Function()? updateSubscription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_GetAllStudents value) getAllStudents,
    required TResult Function(_UpdateSubscription value) updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_GetAllStudents value)? getAllStudents,
    TResult? Function(_UpdateSubscription value)? updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_GetAllStudents value)? getAllStudents,
    TResult Function(_UpdateSubscription value)? updateSubscription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentUserImplCopyWith<$Res> {
  factory _$$GetCurrentUserImplCopyWith(_$GetCurrentUserImpl value,
          $Res Function(_$GetCurrentUserImpl) then) =
      __$$GetCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetCurrentUserImpl>
    implements _$$GetCurrentUserImplCopyWith<$Res> {
  __$$GetCurrentUserImplCopyWithImpl(
      _$GetCurrentUserImpl _value, $Res Function(_$GetCurrentUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserImpl implements _GetCurrentUser {
  const _$GetCurrentUserImpl();

  @override
  String toString() {
    return 'UserEvent.getCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function() getAllStudents,
    required TResult Function() updateSubscription,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function()? getAllStudents,
    TResult? Function()? updateSubscription,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function()? getAllStudents,
    TResult Function()? updateSubscription,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_GetAllStudents value) getAllStudents,
    required TResult Function(_UpdateSubscription value) updateSubscription,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_GetAllStudents value)? getAllStudents,
    TResult? Function(_UpdateSubscription value)? updateSubscription,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_GetAllStudents value)? getAllStudents,
    TResult Function(_UpdateSubscription value)? updateSubscription,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUser implements UserEvent {
  const factory _GetCurrentUser() = _$GetCurrentUserImpl;
}

/// @nodoc
abstract class _$$GetAllStudentsImplCopyWith<$Res> {
  factory _$$GetAllStudentsImplCopyWith(_$GetAllStudentsImpl value,
          $Res Function(_$GetAllStudentsImpl) then) =
      __$$GetAllStudentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllStudentsImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetAllStudentsImpl>
    implements _$$GetAllStudentsImplCopyWith<$Res> {
  __$$GetAllStudentsImplCopyWithImpl(
      _$GetAllStudentsImpl _value, $Res Function(_$GetAllStudentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllStudentsImpl implements _GetAllStudents {
  const _$GetAllStudentsImpl();

  @override
  String toString() {
    return 'UserEvent.getAllStudents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllStudentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function() getAllStudents,
    required TResult Function() updateSubscription,
  }) {
    return getAllStudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function()? getAllStudents,
    TResult? Function()? updateSubscription,
  }) {
    return getAllStudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function()? getAllStudents,
    TResult Function()? updateSubscription,
    required TResult orElse(),
  }) {
    if (getAllStudents != null) {
      return getAllStudents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_GetAllStudents value) getAllStudents,
    required TResult Function(_UpdateSubscription value) updateSubscription,
  }) {
    return getAllStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_GetAllStudents value)? getAllStudents,
    TResult? Function(_UpdateSubscription value)? updateSubscription,
  }) {
    return getAllStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_GetAllStudents value)? getAllStudents,
    TResult Function(_UpdateSubscription value)? updateSubscription,
    required TResult orElse(),
  }) {
    if (getAllStudents != null) {
      return getAllStudents(this);
    }
    return orElse();
  }
}

abstract class _GetAllStudents implements UserEvent {
  const factory _GetAllStudents() = _$GetAllStudentsImpl;
}

/// @nodoc
abstract class _$$UpdateSubscriptionImplCopyWith<$Res> {
  factory _$$UpdateSubscriptionImplCopyWith(_$UpdateSubscriptionImpl value,
          $Res Function(_$UpdateSubscriptionImpl) then) =
      __$$UpdateSubscriptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateSubscriptionImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateSubscriptionImpl>
    implements _$$UpdateSubscriptionImplCopyWith<$Res> {
  __$$UpdateSubscriptionImplCopyWithImpl(_$UpdateSubscriptionImpl _value,
      $Res Function(_$UpdateSubscriptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateSubscriptionImpl implements _UpdateSubscription {
  const _$UpdateSubscriptionImpl();

  @override
  String toString() {
    return 'UserEvent.updateSubscription()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateSubscriptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function() getAllStudents,
    required TResult Function() updateSubscription,
  }) {
    return updateSubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function()? getAllStudents,
    TResult? Function()? updateSubscription,
  }) {
    return updateSubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function()? getAllStudents,
    TResult Function()? updateSubscription,
    required TResult orElse(),
  }) {
    if (updateSubscription != null) {
      return updateSubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_GetAllStudents value) getAllStudents,
    required TResult Function(_UpdateSubscription value) updateSubscription,
  }) {
    return updateSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_GetAllStudents value)? getAllStudents,
    TResult? Function(_UpdateSubscription value)? updateSubscription,
  }) {
    return updateSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_GetAllStudents value)? getAllStudents,
    TResult Function(_UpdateSubscription value)? updateSubscription,
    required TResult orElse(),
  }) {
    if (updateSubscription != null) {
      return updateSubscription(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubscription implements UserEvent {
  const factory _UpdateSubscription() = _$UpdateSubscriptionImpl;
}

/// @nodoc
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  List<UserModel> get studentsList => throw _privateConstructorUsedError;
  Option<Either<MainFailures, UserModel>> get userOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserModel user,
      List<UserModel> studentsList,
      Option<Either<MainFailures, UserModel>> userOpt});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = null,
    Object? studentsList = null,
    Object? userOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      studentsList: null == studentsList
          ? _value.studentsList
          : studentsList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      userOpt: null == userOpt
          ? _value.userOpt
          : userOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, UserModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserModel user,
      List<UserModel> studentsList,
      Option<Either<MainFailures, UserModel>> userOpt});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = null,
    Object? studentsList = null,
    Object? userOpt = null,
  }) {
    return _then(_$UserStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      studentsList: null == studentsList
          ? _value._studentsList
          : studentsList // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      userOpt: null == userOpt
          ? _value.userOpt
          : userOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, UserModel>>,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.isLoading,
      required this.user,
      required final List<UserModel> studentsList,
      required this.userOpt})
      : _studentsList = studentsList;

  @override
  final bool isLoading;
  @override
  final UserModel user;
  final List<UserModel> _studentsList;
  @override
  List<UserModel> get studentsList {
    if (_studentsList is EqualUnmodifiableListView) return _studentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentsList);
  }

  @override
  final Option<Either<MainFailures, UserModel>> userOpt;

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, user: $user, studentsList: $studentsList, userOpt: $userOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._studentsList, _studentsList) &&
            (identical(other.userOpt, userOpt) || other.userOpt == userOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user,
      const DeepCollectionEquality().hash(_studentsList), userOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
          {required final bool isLoading,
          required final UserModel user,
          required final List<UserModel> studentsList,
          required final Option<Either<MainFailures, UserModel>> userOpt}) =
      _$UserStateImpl;

  @override
  bool get isLoading;
  @override
  UserModel get user;
  @override
  List<UserModel> get studentsList;
  @override
  Option<Either<MainFailures, UserModel>> get userOpt;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
