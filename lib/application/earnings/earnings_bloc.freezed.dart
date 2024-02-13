// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EarningsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EarningsModel earnings) addATransaction,
    required TResult Function() getEarnings,
    required TResult Function() getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EarningsModel earnings)? addATransaction,
    TResult? Function()? getEarnings,
    TResult? Function()? getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EarningsModel earnings)? addATransaction,
    TResult Function()? getEarnings,
    TResult Function()? getTotalEarnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddATransaction value) addATransaction,
    required TResult Function(_GetEarnings value) getEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddATransaction value)? addATransaction,
    TResult? Function(_GetEarnings value)? getEarnings,
    TResult? Function(_GetTotalEarnings value)? getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddATransaction value)? addATransaction,
    TResult Function(_GetEarnings value)? getEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsEventCopyWith<$Res> {
  factory $EarningsEventCopyWith(
          EarningsEvent value, $Res Function(EarningsEvent) then) =
      _$EarningsEventCopyWithImpl<$Res, EarningsEvent>;
}

/// @nodoc
class _$EarningsEventCopyWithImpl<$Res, $Val extends EarningsEvent>
    implements $EarningsEventCopyWith<$Res> {
  _$EarningsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddATransactionImplCopyWith<$Res> {
  factory _$$AddATransactionImplCopyWith(_$AddATransactionImpl value,
          $Res Function(_$AddATransactionImpl) then) =
      __$$AddATransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EarningsModel earnings});

  $EarningsModelCopyWith<$Res> get earnings;
}

/// @nodoc
class __$$AddATransactionImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$AddATransactionImpl>
    implements _$$AddATransactionImplCopyWith<$Res> {
  __$$AddATransactionImplCopyWithImpl(
      _$AddATransactionImpl _value, $Res Function(_$AddATransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnings = null,
  }) {
    return _then(_$AddATransactionImpl(
      null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as EarningsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EarningsModelCopyWith<$Res> get earnings {
    return $EarningsModelCopyWith<$Res>(_value.earnings, (value) {
      return _then(_value.copyWith(earnings: value));
    });
  }
}

/// @nodoc

class _$AddATransactionImpl implements _AddATransaction {
  const _$AddATransactionImpl(this.earnings);

  @override
  final EarningsModel earnings;

  @override
  String toString() {
    return 'EarningsEvent.addATransaction(earnings: $earnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddATransactionImpl &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, earnings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddATransactionImplCopyWith<_$AddATransactionImpl> get copyWith =>
      __$$AddATransactionImplCopyWithImpl<_$AddATransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EarningsModel earnings) addATransaction,
    required TResult Function() getEarnings,
    required TResult Function() getTotalEarnings,
  }) {
    return addATransaction(earnings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EarningsModel earnings)? addATransaction,
    TResult? Function()? getEarnings,
    TResult? Function()? getTotalEarnings,
  }) {
    return addATransaction?.call(earnings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EarningsModel earnings)? addATransaction,
    TResult Function()? getEarnings,
    TResult Function()? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (addATransaction != null) {
      return addATransaction(earnings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddATransaction value) addATransaction,
    required TResult Function(_GetEarnings value) getEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return addATransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddATransaction value)? addATransaction,
    TResult? Function(_GetEarnings value)? getEarnings,
    TResult? Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return addATransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddATransaction value)? addATransaction,
    TResult Function(_GetEarnings value)? getEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (addATransaction != null) {
      return addATransaction(this);
    }
    return orElse();
  }
}

abstract class _AddATransaction implements EarningsEvent {
  const factory _AddATransaction(final EarningsModel earnings) =
      _$AddATransactionImpl;

  EarningsModel get earnings;
  @JsonKey(ignore: true)
  _$$AddATransactionImplCopyWith<_$AddATransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEarningsImplCopyWith<$Res> {
  factory _$$GetEarningsImplCopyWith(
          _$GetEarningsImpl value, $Res Function(_$GetEarningsImpl) then) =
      __$$GetEarningsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEarningsImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$GetEarningsImpl>
    implements _$$GetEarningsImplCopyWith<$Res> {
  __$$GetEarningsImplCopyWithImpl(
      _$GetEarningsImpl _value, $Res Function(_$GetEarningsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEarningsImpl implements _GetEarnings {
  const _$GetEarningsImpl();

  @override
  String toString() {
    return 'EarningsEvent.getEarnings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEarningsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EarningsModel earnings) addATransaction,
    required TResult Function() getEarnings,
    required TResult Function() getTotalEarnings,
  }) {
    return getEarnings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EarningsModel earnings)? addATransaction,
    TResult? Function()? getEarnings,
    TResult? Function()? getTotalEarnings,
  }) {
    return getEarnings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EarningsModel earnings)? addATransaction,
    TResult Function()? getEarnings,
    TResult Function()? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getEarnings != null) {
      return getEarnings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddATransaction value) addATransaction,
    required TResult Function(_GetEarnings value) getEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getEarnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddATransaction value)? addATransaction,
    TResult? Function(_GetEarnings value)? getEarnings,
    TResult? Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getEarnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddATransaction value)? addATransaction,
    TResult Function(_GetEarnings value)? getEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getEarnings != null) {
      return getEarnings(this);
    }
    return orElse();
  }
}

abstract class _GetEarnings implements EarningsEvent {
  const factory _GetEarnings() = _$GetEarningsImpl;
}

/// @nodoc
abstract class _$$GetTotalEarningsImplCopyWith<$Res> {
  factory _$$GetTotalEarningsImplCopyWith(_$GetTotalEarningsImpl value,
          $Res Function(_$GetTotalEarningsImpl) then) =
      __$$GetTotalEarningsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTotalEarningsImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$GetTotalEarningsImpl>
    implements _$$GetTotalEarningsImplCopyWith<$Res> {
  __$$GetTotalEarningsImplCopyWithImpl(_$GetTotalEarningsImpl _value,
      $Res Function(_$GetTotalEarningsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTotalEarningsImpl implements _GetTotalEarnings {
  const _$GetTotalEarningsImpl();

  @override
  String toString() {
    return 'EarningsEvent.getTotalEarnings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTotalEarningsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EarningsModel earnings) addATransaction,
    required TResult Function() getEarnings,
    required TResult Function() getTotalEarnings,
  }) {
    return getTotalEarnings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EarningsModel earnings)? addATransaction,
    TResult? Function()? getEarnings,
    TResult? Function()? getTotalEarnings,
  }) {
    return getTotalEarnings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EarningsModel earnings)? addATransaction,
    TResult Function()? getEarnings,
    TResult Function()? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getTotalEarnings != null) {
      return getTotalEarnings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddATransaction value) addATransaction,
    required TResult Function(_GetEarnings value) getEarnings,
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getTotalEarnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddATransaction value)? addATransaction,
    TResult? Function(_GetEarnings value)? getEarnings,
    TResult? Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getTotalEarnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddATransaction value)? addATransaction,
    TResult Function(_GetEarnings value)? getEarnings,
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getTotalEarnings != null) {
      return getTotalEarnings(this);
    }
    return orElse();
  }
}

abstract class _GetTotalEarnings implements EarningsEvent {
  const factory _GetTotalEarnings() = _$GetTotalEarningsImpl;
}

/// @nodoc
mixin _$EarningsState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get totalEarnings => throw _privateConstructorUsedError;
  List<EarningsModel> get earningsList => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<EarningsModel>>> get earningsListOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EarningsStateCopyWith<EarningsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsStateCopyWith<$Res> {
  factory $EarningsStateCopyWith(
          EarningsState value, $Res Function(EarningsState) then) =
      _$EarningsStateCopyWithImpl<$Res, EarningsState>;
  @useResult
  $Res call(
      {bool isLoading,
      int totalEarnings,
      List<EarningsModel> earningsList,
      Option<Either<MainFailures, List<EarningsModel>>> earningsListOpt});
}

/// @nodoc
class _$EarningsStateCopyWithImpl<$Res, $Val extends EarningsState>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? totalEarnings = null,
    Object? earningsList = null,
    Object? earningsListOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as int,
      earningsList: null == earningsList
          ? _value.earningsList
          : earningsList // ignore: cast_nullable_to_non_nullable
              as List<EarningsModel>,
      earningsListOpt: null == earningsListOpt
          ? _value.earningsListOpt
          : earningsListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<EarningsModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningsStateImplCopyWith<$Res>
    implements $EarningsStateCopyWith<$Res> {
  factory _$$EarningsStateImplCopyWith(
          _$EarningsStateImpl value, $Res Function(_$EarningsStateImpl) then) =
      __$$EarningsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int totalEarnings,
      List<EarningsModel> earningsList,
      Option<Either<MainFailures, List<EarningsModel>>> earningsListOpt});
}

/// @nodoc
class __$$EarningsStateImplCopyWithImpl<$Res>
    extends _$EarningsStateCopyWithImpl<$Res, _$EarningsStateImpl>
    implements _$$EarningsStateImplCopyWith<$Res> {
  __$$EarningsStateImplCopyWithImpl(
      _$EarningsStateImpl _value, $Res Function(_$EarningsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? totalEarnings = null,
    Object? earningsList = null,
    Object? earningsListOpt = null,
  }) {
    return _then(_$EarningsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as int,
      earningsList: null == earningsList
          ? _value._earningsList
          : earningsList // ignore: cast_nullable_to_non_nullable
              as List<EarningsModel>,
      earningsListOpt: null == earningsListOpt
          ? _value.earningsListOpt
          : earningsListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<EarningsModel>>>,
    ));
  }
}

/// @nodoc

class _$EarningsStateImpl implements _EarningsState {
  const _$EarningsStateImpl(
      {required this.isLoading,
      required this.totalEarnings,
      required final List<EarningsModel> earningsList,
      required this.earningsListOpt})
      : _earningsList = earningsList;

  @override
  final bool isLoading;
  @override
  final int totalEarnings;
  final List<EarningsModel> _earningsList;
  @override
  List<EarningsModel> get earningsList {
    if (_earningsList is EqualUnmodifiableListView) return _earningsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earningsList);
  }

  @override
  final Option<Either<MainFailures, List<EarningsModel>>> earningsListOpt;

  @override
  String toString() {
    return 'EarningsState(isLoading: $isLoading, totalEarnings: $totalEarnings, earningsList: $earningsList, earningsListOpt: $earningsListOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings) &&
            const DeepCollectionEquality()
                .equals(other._earningsList, _earningsList) &&
            (identical(other.earningsListOpt, earningsListOpt) ||
                other.earningsListOpt == earningsListOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, totalEarnings,
      const DeepCollectionEquality().hash(_earningsList), earningsListOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsStateImplCopyWith<_$EarningsStateImpl> get copyWith =>
      __$$EarningsStateImplCopyWithImpl<_$EarningsStateImpl>(this, _$identity);
}

abstract class _EarningsState implements EarningsState {
  const factory _EarningsState(
      {required final bool isLoading,
      required final int totalEarnings,
      required final List<EarningsModel> earningsList,
      required final Option<Either<MainFailures, List<EarningsModel>>>
          earningsListOpt}) = _$EarningsStateImpl;

  @override
  bool get isLoading;
  @override
  int get totalEarnings;
  @override
  List<EarningsModel> get earningsList;
  @override
  Option<Either<MainFailures, List<EarningsModel>>> get earningsListOpt;
  @override
  @JsonKey(ignore: true)
  _$$EarningsStateImplCopyWith<_$EarningsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
