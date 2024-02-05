// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigninEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninEventCopyWith<SigninEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninEventCopyWith<$Res> {
  factory $SigninEventCopyWith(
          SigninEvent value, $Res Function(SigninEvent) then) =
      _$SigninEventCopyWithImpl<$Res, SigninEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SigninEventCopyWithImpl<$Res, $Val extends SigninEvent>
    implements $SigninEventCopyWith<$Res> {
  _$SigninEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninImplCopyWith<$Res>
    implements $SigninEventCopyWith<$Res> {
  factory _$$SigninImplCopyWith(
          _$SigninImpl value, $Res Function(_$SigninImpl) then) =
      __$$SigninImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SigninImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$SigninImpl>
    implements _$$SigninImplCopyWith<$Res> {
  __$$SigninImplCopyWithImpl(
      _$SigninImpl _value, $Res Function(_$SigninImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigninImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SigninImpl implements _Signin {
  const _$SigninImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninEvent.signin(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninImplCopyWith<_$SigninImpl> get copyWith =>
      __$$SigninImplCopyWithImpl<_$SigninImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signin,
  }) {
    return signin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signin,
  }) {
    return signin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signin,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signin value) signin,
  }) {
    return signin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signin value)? signin,
  }) {
    return signin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signin value)? signin,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(this);
    }
    return orElse();
  }
}

abstract class _Signin implements SigninEvent {
  const factory _Signin(
      {required final String email,
      required final String password}) = _$SigninImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SigninImplCopyWith<_$SigninImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SigninState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Option<Either<MainFailures, User>> get signinOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call(
      {bool isLoading,
      User? user,
      Option<Either<MainFailures, User>> signinOpt});
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? signinOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      signinOpt: null == signinOpt
          ? _value.signinOpt
          : signinOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, User>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninStateImplCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateImplCopyWith(
          _$SigninStateImpl value, $Res Function(_$SigninStateImpl) then) =
      __$$SigninStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      User? user,
      Option<Either<MainFailures, User>> signinOpt});
}

/// @nodoc
class __$$SigninStateImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateImpl>
    implements _$$SigninStateImplCopyWith<$Res> {
  __$$SigninStateImplCopyWithImpl(
      _$SigninStateImpl _value, $Res Function(_$SigninStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? signinOpt = null,
  }) {
    return _then(_$SigninStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      signinOpt: null == signinOpt
          ? _value.signinOpt
          : signinOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, User>>,
    ));
  }
}

/// @nodoc

class _$SigninStateImpl implements _SigninState {
  const _$SigninStateImpl(
      {required this.isLoading, this.user, required this.signinOpt});

  @override
  final bool isLoading;
  @override
  final User? user;
  @override
  final Option<Either<MainFailures, User>> signinOpt;

  @override
  String toString() {
    return 'SigninState(isLoading: $isLoading, user: $user, signinOpt: $signinOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.signinOpt, signinOpt) ||
                other.signinOpt == signinOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user, signinOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      __$$SigninStateImplCopyWithImpl<_$SigninStateImpl>(this, _$identity);
}

abstract class _SigninState implements SigninState {
  const factory _SigninState(
          {required final bool isLoading,
          final User? user,
          required final Option<Either<MainFailures, User>> signinOpt}) =
      _$SigninStateImpl;

  @override
  bool get isLoading;
  @override
  User? get user;
  @override
  Option<Either<MainFailures, User>> get signinOpt;
  @override
  @JsonKey(ignore: true)
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
