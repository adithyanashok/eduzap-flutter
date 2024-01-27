// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseModel course) uploadCourse,
    required TResult Function() getAllCourses,
    required TResult Function(String id) getCourse,
    required TResult Function(String query) searchCourse,
    required TResult Function(String category) coursesByCategory,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseModel course)? uploadCourse,
    TResult? Function()? getAllCourses,
    TResult? Function(String id)? getCourse,
    TResult? Function(String query)? searchCourse,
    TResult? Function(String category)? coursesByCategory,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseModel course)? uploadCourse,
    TResult Function()? getAllCourses,
    TResult Function(String id)? getCourse,
    TResult Function(String query)? searchCourse,
    TResult Function(String category)? coursesByCategory,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadCourse value) uploadCourse,
    required TResult Function(_GetAllCourses value) getAllCourses,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_SearchCourse value) searchCourse,
    required TResult Function(_CoursesByCategory value) coursesByCategory,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadCourse value)? uploadCourse,
    TResult? Function(_GetAllCourses value)? getAllCourses,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_SearchCourse value)? searchCourse,
    TResult? Function(_CoursesByCategory value)? coursesByCategory,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadCourse value)? uploadCourse,
    TResult Function(_GetAllCourses value)? getAllCourses,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_SearchCourse value)? searchCourse,
    TResult Function(_CoursesByCategory value)? coursesByCategory,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEventCopyWith<$Res> {
  factory $CourseEventCopyWith(
          CourseEvent value, $Res Function(CourseEvent) then) =
      _$CourseEventCopyWithImpl<$Res, CourseEvent>;
}

/// @nodoc
class _$CourseEventCopyWithImpl<$Res, $Val extends CourseEvent>
    implements $CourseEventCopyWith<$Res> {
  _$CourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadCourseImplCopyWith<$Res> {
  factory _$$UploadCourseImplCopyWith(
          _$UploadCourseImpl value, $Res Function(_$UploadCourseImpl) then) =
      __$$UploadCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseModel course});

  $CourseModelCopyWith<$Res> get course;
}

/// @nodoc
class __$$UploadCourseImplCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$UploadCourseImpl>
    implements _$$UploadCourseImplCopyWith<$Res> {
  __$$UploadCourseImplCopyWithImpl(
      _$UploadCourseImpl _value, $Res Function(_$UploadCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$UploadCourseImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseModelCopyWith<$Res> get course {
    return $CourseModelCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc

class _$UploadCourseImpl with DiagnosticableTreeMixin implements _UploadCourse {
  const _$UploadCourseImpl({required this.course});

  @override
  final CourseModel course;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.uploadCourse(course: $course)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseEvent.uploadCourse'))
      ..add(DiagnosticsProperty('course', course));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadCourseImpl &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadCourseImplCopyWith<_$UploadCourseImpl> get copyWith =>
      __$$UploadCourseImplCopyWithImpl<_$UploadCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseModel course) uploadCourse,
    required TResult Function() getAllCourses,
    required TResult Function(String id) getCourse,
    required TResult Function(String query) searchCourse,
    required TResult Function(String category) coursesByCategory,
    required TResult Function() clear,
  }) {
    return uploadCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseModel course)? uploadCourse,
    TResult? Function()? getAllCourses,
    TResult? Function(String id)? getCourse,
    TResult? Function(String query)? searchCourse,
    TResult? Function(String category)? coursesByCategory,
    TResult? Function()? clear,
  }) {
    return uploadCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseModel course)? uploadCourse,
    TResult Function()? getAllCourses,
    TResult Function(String id)? getCourse,
    TResult Function(String query)? searchCourse,
    TResult Function(String category)? coursesByCategory,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (uploadCourse != null) {
      return uploadCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadCourse value) uploadCourse,
    required TResult Function(_GetAllCourses value) getAllCourses,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_SearchCourse value) searchCourse,
    required TResult Function(_CoursesByCategory value) coursesByCategory,
    required TResult Function(_Clear value) clear,
  }) {
    return uploadCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadCourse value)? uploadCourse,
    TResult? Function(_GetAllCourses value)? getAllCourses,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_SearchCourse value)? searchCourse,
    TResult? Function(_CoursesByCategory value)? coursesByCategory,
    TResult? Function(_Clear value)? clear,
  }) {
    return uploadCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadCourse value)? uploadCourse,
    TResult Function(_GetAllCourses value)? getAllCourses,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_SearchCourse value)? searchCourse,
    TResult Function(_CoursesByCategory value)? coursesByCategory,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (uploadCourse != null) {
      return uploadCourse(this);
    }
    return orElse();
  }
}

abstract class _UploadCourse implements CourseEvent {
  const factory _UploadCourse({required final CourseModel course}) =
      _$UploadCourseImpl;

  CourseModel get course;
  @JsonKey(ignore: true)
  _$$UploadCourseImplCopyWith<_$UploadCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllCoursesImplCopyWith<$Res> {
  factory _$$GetAllCoursesImplCopyWith(
          _$GetAllCoursesImpl value, $Res Function(_$GetAllCoursesImpl) then) =
      __$$GetAllCoursesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCoursesImplCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$GetAllCoursesImpl>
    implements _$$GetAllCoursesImplCopyWith<$Res> {
  __$$GetAllCoursesImplCopyWithImpl(
      _$GetAllCoursesImpl _value, $Res Function(_$GetAllCoursesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCoursesImpl
    with DiagnosticableTreeMixin
    implements _GetAllCourses {
  const _$GetAllCoursesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.getAllCourses()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CourseEvent.getAllCourses'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCoursesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseModel course) uploadCourse,
    required TResult Function() getAllCourses,
    required TResult Function(String id) getCourse,
    required TResult Function(String query) searchCourse,
    required TResult Function(String category) coursesByCategory,
    required TResult Function() clear,
  }) {
    return getAllCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseModel course)? uploadCourse,
    TResult? Function()? getAllCourses,
    TResult? Function(String id)? getCourse,
    TResult? Function(String query)? searchCourse,
    TResult? Function(String category)? coursesByCategory,
    TResult? Function()? clear,
  }) {
    return getAllCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseModel course)? uploadCourse,
    TResult Function()? getAllCourses,
    TResult Function(String id)? getCourse,
    TResult Function(String query)? searchCourse,
    TResult Function(String category)? coursesByCategory,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (getAllCourses != null) {
      return getAllCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadCourse value) uploadCourse,
    required TResult Function(_GetAllCourses value) getAllCourses,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_SearchCourse value) searchCourse,
    required TResult Function(_CoursesByCategory value) coursesByCategory,
    required TResult Function(_Clear value) clear,
  }) {
    return getAllCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadCourse value)? uploadCourse,
    TResult? Function(_GetAllCourses value)? getAllCourses,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_SearchCourse value)? searchCourse,
    TResult? Function(_CoursesByCategory value)? coursesByCategory,
    TResult? Function(_Clear value)? clear,
  }) {
    return getAllCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadCourse value)? uploadCourse,
    TResult Function(_GetAllCourses value)? getAllCourses,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_SearchCourse value)? searchCourse,
    TResult Function(_CoursesByCategory value)? coursesByCategory,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (getAllCourses != null) {
      return getAllCourses(this);
    }
    return orElse();
  }
}

abstract class _GetAllCourses implements CourseEvent {
  const factory _GetAllCourses() = _$GetAllCoursesImpl;
}

/// @nodoc
abstract class _$$GetCourseImplCopyWith<$Res> {
  factory _$$GetCourseImplCopyWith(
          _$GetCourseImpl value, $Res Function(_$GetCourseImpl) then) =
      __$$GetCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetCourseImplCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$GetCourseImpl>
    implements _$$GetCourseImplCopyWith<$Res> {
  __$$GetCourseImplCopyWithImpl(
      _$GetCourseImpl _value, $Res Function(_$GetCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetCourseImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCourseImpl with DiagnosticableTreeMixin implements _GetCourse {
  const _$GetCourseImpl(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.getCourse(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseEvent.getCourse'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCourseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCourseImplCopyWith<_$GetCourseImpl> get copyWith =>
      __$$GetCourseImplCopyWithImpl<_$GetCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseModel course) uploadCourse,
    required TResult Function() getAllCourses,
    required TResult Function(String id) getCourse,
    required TResult Function(String query) searchCourse,
    required TResult Function(String category) coursesByCategory,
    required TResult Function() clear,
  }) {
    return getCourse(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseModel course)? uploadCourse,
    TResult? Function()? getAllCourses,
    TResult? Function(String id)? getCourse,
    TResult? Function(String query)? searchCourse,
    TResult? Function(String category)? coursesByCategory,
    TResult? Function()? clear,
  }) {
    return getCourse?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseModel course)? uploadCourse,
    TResult Function()? getAllCourses,
    TResult Function(String id)? getCourse,
    TResult Function(String query)? searchCourse,
    TResult Function(String category)? coursesByCategory,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (getCourse != null) {
      return getCourse(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadCourse value) uploadCourse,
    required TResult Function(_GetAllCourses value) getAllCourses,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_SearchCourse value) searchCourse,
    required TResult Function(_CoursesByCategory value) coursesByCategory,
    required TResult Function(_Clear value) clear,
  }) {
    return getCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadCourse value)? uploadCourse,
    TResult? Function(_GetAllCourses value)? getAllCourses,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_SearchCourse value)? searchCourse,
    TResult? Function(_CoursesByCategory value)? coursesByCategory,
    TResult? Function(_Clear value)? clear,
  }) {
    return getCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadCourse value)? uploadCourse,
    TResult Function(_GetAllCourses value)? getAllCourses,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_SearchCourse value)? searchCourse,
    TResult Function(_CoursesByCategory value)? coursesByCategory,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (getCourse != null) {
      return getCourse(this);
    }
    return orElse();
  }
}

abstract class _GetCourse implements CourseEvent {
  const factory _GetCourse(final String id) = _$GetCourseImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetCourseImplCopyWith<_$GetCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCourseImplCopyWith<$Res> {
  factory _$$SearchCourseImplCopyWith(
          _$SearchCourseImpl value, $Res Function(_$SearchCourseImpl) then) =
      __$$SearchCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCourseImplCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$SearchCourseImpl>
    implements _$$SearchCourseImplCopyWith<$Res> {
  __$$SearchCourseImplCopyWithImpl(
      _$SearchCourseImpl _value, $Res Function(_$SearchCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCourseImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCourseImpl with DiagnosticableTreeMixin implements _SearchCourse {
  const _$SearchCourseImpl(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.searchCourse(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseEvent.searchCourse'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCourseImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCourseImplCopyWith<_$SearchCourseImpl> get copyWith =>
      __$$SearchCourseImplCopyWithImpl<_$SearchCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseModel course) uploadCourse,
    required TResult Function() getAllCourses,
    required TResult Function(String id) getCourse,
    required TResult Function(String query) searchCourse,
    required TResult Function(String category) coursesByCategory,
    required TResult Function() clear,
  }) {
    return searchCourse(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseModel course)? uploadCourse,
    TResult? Function()? getAllCourses,
    TResult? Function(String id)? getCourse,
    TResult? Function(String query)? searchCourse,
    TResult? Function(String category)? coursesByCategory,
    TResult? Function()? clear,
  }) {
    return searchCourse?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseModel course)? uploadCourse,
    TResult Function()? getAllCourses,
    TResult Function(String id)? getCourse,
    TResult Function(String query)? searchCourse,
    TResult Function(String category)? coursesByCategory,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (searchCourse != null) {
      return searchCourse(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadCourse value) uploadCourse,
    required TResult Function(_GetAllCourses value) getAllCourses,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_SearchCourse value) searchCourse,
    required TResult Function(_CoursesByCategory value) coursesByCategory,
    required TResult Function(_Clear value) clear,
  }) {
    return searchCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadCourse value)? uploadCourse,
    TResult? Function(_GetAllCourses value)? getAllCourses,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_SearchCourse value)? searchCourse,
    TResult? Function(_CoursesByCategory value)? coursesByCategory,
    TResult? Function(_Clear value)? clear,
  }) {
    return searchCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadCourse value)? uploadCourse,
    TResult Function(_GetAllCourses value)? getAllCourses,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_SearchCourse value)? searchCourse,
    TResult Function(_CoursesByCategory value)? coursesByCategory,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (searchCourse != null) {
      return searchCourse(this);
    }
    return orElse();
  }
}

abstract class _SearchCourse implements CourseEvent {
  const factory _SearchCourse(final String query) = _$SearchCourseImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchCourseImplCopyWith<_$SearchCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoursesByCategoryImplCopyWith<$Res> {
  factory _$$CoursesByCategoryImplCopyWith(_$CoursesByCategoryImpl value,
          $Res Function(_$CoursesByCategoryImpl) then) =
      __$$CoursesByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$CoursesByCategoryImplCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$CoursesByCategoryImpl>
    implements _$$CoursesByCategoryImplCopyWith<$Res> {
  __$$CoursesByCategoryImplCopyWithImpl(_$CoursesByCategoryImpl _value,
      $Res Function(_$CoursesByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CoursesByCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoursesByCategoryImpl
    with DiagnosticableTreeMixin
    implements _CoursesByCategory {
  const _$CoursesByCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.coursesByCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseEvent.coursesByCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesByCategoryImplCopyWith<_$CoursesByCategoryImpl> get copyWith =>
      __$$CoursesByCategoryImplCopyWithImpl<_$CoursesByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CourseModel course) uploadCourse,
    required TResult Function() getAllCourses,
    required TResult Function(String id) getCourse,
    required TResult Function(String query) searchCourse,
    required TResult Function(String category) coursesByCategory,
    required TResult Function() clear,
  }) {
    return coursesByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseModel course)? uploadCourse,
    TResult? Function()? getAllCourses,
    TResult? Function(String id)? getCourse,
    TResult? Function(String query)? searchCourse,
    TResult? Function(String category)? coursesByCategory,
    TResult? Function()? clear,
  }) {
    return coursesByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseModel course)? uploadCourse,
    TResult Function()? getAllCourses,
    TResult Function(String id)? getCourse,
    TResult Function(String query)? searchCourse,
    TResult Function(String category)? coursesByCategory,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (coursesByCategory != null) {
      return coursesByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadCourse value) uploadCourse,
    required TResult Function(_GetAllCourses value) getAllCourses,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_SearchCourse value) searchCourse,
    required TResult Function(_CoursesByCategory value) coursesByCategory,
    required TResult Function(_Clear value) clear,
  }) {
    return coursesByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadCourse value)? uploadCourse,
    TResult? Function(_GetAllCourses value)? getAllCourses,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_SearchCourse value)? searchCourse,
    TResult? Function(_CoursesByCategory value)? coursesByCategory,
    TResult? Function(_Clear value)? clear,
  }) {
    return coursesByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadCourse value)? uploadCourse,
    TResult Function(_GetAllCourses value)? getAllCourses,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_SearchCourse value)? searchCourse,
    TResult Function(_CoursesByCategory value)? coursesByCategory,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (coursesByCategory != null) {
      return coursesByCategory(this);
    }
    return orElse();
  }
}

abstract class _CoursesByCategory implements CourseEvent {
  const factory _CoursesByCategory(final String category) =
      _$CoursesByCategoryImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$CoursesByCategoryImplCopyWith<_$CoursesByCategoryImpl> get copyWith =>
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
    extends _$CourseEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl with DiagnosticableTreeMixin implements _Clear {
  const _$ClearImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvent.clear()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CourseEvent.clear'));
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
    required TResult Function(CourseModel course) uploadCourse,
    required TResult Function() getAllCourses,
    required TResult Function(String id) getCourse,
    required TResult Function(String query) searchCourse,
    required TResult Function(String category) coursesByCategory,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CourseModel course)? uploadCourse,
    TResult? Function()? getAllCourses,
    TResult? Function(String id)? getCourse,
    TResult? Function(String query)? searchCourse,
    TResult? Function(String category)? coursesByCategory,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CourseModel course)? uploadCourse,
    TResult Function()? getAllCourses,
    TResult Function(String id)? getCourse,
    TResult Function(String query)? searchCourse,
    TResult Function(String category)? coursesByCategory,
    TResult Function()? clear,
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
    required TResult Function(_UploadCourse value) uploadCourse,
    required TResult Function(_GetAllCourses value) getAllCourses,
    required TResult Function(_GetCourse value) getCourse,
    required TResult Function(_SearchCourse value) searchCourse,
    required TResult Function(_CoursesByCategory value) coursesByCategory,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadCourse value)? uploadCourse,
    TResult? Function(_GetAllCourses value)? getAllCourses,
    TResult? Function(_GetCourse value)? getCourse,
    TResult? Function(_SearchCourse value)? searchCourse,
    TResult? Function(_CoursesByCategory value)? coursesByCategory,
    TResult? Function(_Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadCourse value)? uploadCourse,
    TResult Function(_GetAllCourses value)? getAllCourses,
    TResult Function(_GetCourse value)? getCourse,
    TResult Function(_SearchCourse value)? searchCourse,
    TResult Function(_CoursesByCategory value)? coursesByCategory,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements CourseEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$CourseState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  List<CourseModel> get searchList => throw _privateConstructorUsedError;
  List<CourseModel> get coursebyCategoryList =>
      throw _privateConstructorUsedError;
  CourseModel get course => throw _privateConstructorUsedError;
  Option<Either<MainFailures, CourseModel>> get courseOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<CourseModel>>> get courseListOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<CourseModel>>> get coursebyCategoryOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<CourseModel>>> get searchListOpt =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<CourseModel> courses,
      List<CourseModel> searchList,
      List<CourseModel> coursebyCategoryList,
      CourseModel course,
      Option<Either<MainFailures, CourseModel>> courseOpt,
      Option<Either<MainFailures, List<CourseModel>>> courseListOpt,
      Option<Either<MainFailures, List<CourseModel>>> coursebyCategoryOpt,
      Option<Either<MainFailures, List<CourseModel>>> searchListOpt,
      String? error});

  $CourseModelCopyWith<$Res> get course;
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? courses = null,
    Object? searchList = null,
    Object? coursebyCategoryList = null,
    Object? course = null,
    Object? courseOpt = null,
    Object? courseListOpt = null,
    Object? coursebyCategoryOpt = null,
    Object? searchListOpt = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      searchList: null == searchList
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      coursebyCategoryList: null == coursebyCategoryList
          ? _value.coursebyCategoryList
          : coursebyCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseModel,
      courseOpt: null == courseOpt
          ? _value.courseOpt
          : courseOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, CourseModel>>,
      courseListOpt: null == courseListOpt
          ? _value.courseListOpt
          : courseListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CourseModel>>>,
      coursebyCategoryOpt: null == coursebyCategoryOpt
          ? _value.coursebyCategoryOpt
          : coursebyCategoryOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CourseModel>>>,
      searchListOpt: null == searchListOpt
          ? _value.searchListOpt
          : searchListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CourseModel>>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseModelCopyWith<$Res> get course {
    return $CourseModelCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseStateImplCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$$CourseStateImplCopyWith(
          _$CourseStateImpl value, $Res Function(_$CourseStateImpl) then) =
      __$$CourseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<CourseModel> courses,
      List<CourseModel> searchList,
      List<CourseModel> coursebyCategoryList,
      CourseModel course,
      Option<Either<MainFailures, CourseModel>> courseOpt,
      Option<Either<MainFailures, List<CourseModel>>> courseListOpt,
      Option<Either<MainFailures, List<CourseModel>>> coursebyCategoryOpt,
      Option<Either<MainFailures, List<CourseModel>>> searchListOpt,
      String? error});

  @override
  $CourseModelCopyWith<$Res> get course;
}

/// @nodoc
class __$$CourseStateImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateImpl>
    implements _$$CourseStateImplCopyWith<$Res> {
  __$$CourseStateImplCopyWithImpl(
      _$CourseStateImpl _value, $Res Function(_$CourseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? courses = null,
    Object? searchList = null,
    Object? coursebyCategoryList = null,
    Object? course = null,
    Object? courseOpt = null,
    Object? courseListOpt = null,
    Object? coursebyCategoryOpt = null,
    Object? searchListOpt = null,
    Object? error = freezed,
  }) {
    return _then(_$CourseStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      searchList: null == searchList
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      coursebyCategoryList: null == coursebyCategoryList
          ? _value._coursebyCategoryList
          : coursebyCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseModel,
      courseOpt: null == courseOpt
          ? _value.courseOpt
          : courseOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, CourseModel>>,
      courseListOpt: null == courseListOpt
          ? _value.courseListOpt
          : courseListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CourseModel>>>,
      coursebyCategoryOpt: null == coursebyCategoryOpt
          ? _value.coursebyCategoryOpt
          : coursebyCategoryOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CourseModel>>>,
      searchListOpt: null == searchListOpt
          ? _value.searchListOpt
          : searchListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CourseModel>>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourseStateImpl with DiagnosticableTreeMixin implements _CourseState {
  const _$CourseStateImpl(
      {required this.isLoading,
      required final List<CourseModel> courses,
      required final List<CourseModel> searchList,
      required final List<CourseModel> coursebyCategoryList,
      required this.course,
      required this.courseOpt,
      required this.courseListOpt,
      required this.coursebyCategoryOpt,
      required this.searchListOpt,
      this.error})
      : _courses = courses,
        _searchList = searchList,
        _coursebyCategoryList = coursebyCategoryList;

  @override
  final bool isLoading;
  final List<CourseModel> _courses;
  @override
  List<CourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<CourseModel> _searchList;
  @override
  List<CourseModel> get searchList {
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchList);
  }

  final List<CourseModel> _coursebyCategoryList;
  @override
  List<CourseModel> get coursebyCategoryList {
    if (_coursebyCategoryList is EqualUnmodifiableListView)
      return _coursebyCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coursebyCategoryList);
  }

  @override
  final CourseModel course;
  @override
  final Option<Either<MainFailures, CourseModel>> courseOpt;
  @override
  final Option<Either<MainFailures, List<CourseModel>>> courseListOpt;
  @override
  final Option<Either<MainFailures, List<CourseModel>>> coursebyCategoryOpt;
  @override
  final Option<Either<MainFailures, List<CourseModel>>> searchListOpt;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseState(isLoading: $isLoading, courses: $courses, searchList: $searchList, coursebyCategoryList: $coursebyCategoryList, course: $course, courseOpt: $courseOpt, courseListOpt: $courseListOpt, coursebyCategoryOpt: $coursebyCategoryOpt, searchListOpt: $searchListOpt, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('courses', courses))
      ..add(DiagnosticsProperty('searchList', searchList))
      ..add(DiagnosticsProperty('coursebyCategoryList', coursebyCategoryList))
      ..add(DiagnosticsProperty('course', course))
      ..add(DiagnosticsProperty('courseOpt', courseOpt))
      ..add(DiagnosticsProperty('courseListOpt', courseListOpt))
      ..add(DiagnosticsProperty('coursebyCategoryOpt', coursebyCategoryOpt))
      ..add(DiagnosticsProperty('searchListOpt', searchListOpt))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList) &&
            const DeepCollectionEquality()
                .equals(other._coursebyCategoryList, _coursebyCategoryList) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.courseOpt, courseOpt) ||
                other.courseOpt == courseOpt) &&
            (identical(other.courseListOpt, courseListOpt) ||
                other.courseListOpt == courseListOpt) &&
            (identical(other.coursebyCategoryOpt, coursebyCategoryOpt) ||
                other.coursebyCategoryOpt == coursebyCategoryOpt) &&
            (identical(other.searchListOpt, searchListOpt) ||
                other.searchListOpt == searchListOpt) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_searchList),
      const DeepCollectionEquality().hash(_coursebyCategoryList),
      course,
      courseOpt,
      courseListOpt,
      coursebyCategoryOpt,
      searchListOpt,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      __$$CourseStateImplCopyWithImpl<_$CourseStateImpl>(this, _$identity);
}

abstract class _CourseState implements CourseState {
  const factory _CourseState(
      {required final bool isLoading,
      required final List<CourseModel> courses,
      required final List<CourseModel> searchList,
      required final List<CourseModel> coursebyCategoryList,
      required final CourseModel course,
      required final Option<Either<MainFailures, CourseModel>> courseOpt,
      required final Option<Either<MainFailures, List<CourseModel>>>
          courseListOpt,
      required final Option<Either<MainFailures, List<CourseModel>>>
          coursebyCategoryOpt,
      required final Option<Either<MainFailures, List<CourseModel>>>
          searchListOpt,
      final String? error}) = _$CourseStateImpl;

  @override
  bool get isLoading;
  @override
  List<CourseModel> get courses;
  @override
  List<CourseModel> get searchList;
  @override
  List<CourseModel> get coursebyCategoryList;
  @override
  CourseModel get course;
  @override
  Option<Either<MainFailures, CourseModel>> get courseOpt;
  @override
  Option<Either<MainFailures, List<CourseModel>>> get courseListOpt;
  @override
  Option<Either<MainFailures, List<CourseModel>>> get coursebyCategoryOpt;
  @override
  Option<Either<MainFailures, List<CourseModel>>> get searchListOpt;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
