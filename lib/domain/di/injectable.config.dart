// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:eduzap/application/course/course_bloc.dart' as _i11;
import 'package:eduzap/application/signin/signin_bloc.dart' as _i9;
import 'package:eduzap/application/signup/signup_bloc.dart' as _i10;
import 'package:eduzap/domain/course/i_course_facade.dart' as _i3;
import 'package:eduzap/domain/signin/i_signin_facade.dart' as _i5;
import 'package:eduzap/domain/signup/i_signup_facade.dart' as _i7;
import 'package:eduzap/infrastructure/course/course_repositary.dart' as _i4;
import 'package:eduzap/infrastructure/signin/signin_repositary.dart' as _i6;
import 'package:eduzap/infrastructure/signup/signup_repositary.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ICourseFacade>(() => _i4.CourseRepositary());
    gh.lazySingleton<_i5.ISigninFacade>(() => _i6.SigninRepositary());
    gh.lazySingleton<_i7.ISignupFacade>(() => _i8.SignupRepositary());
    gh.factory<_i9.SigninBloc>(() => _i9.SigninBloc(gh<_i5.ISigninFacade>()));
    gh.factory<_i10.SignupBloc>(() => _i10.SignupBloc(gh<_i7.ISignupFacade>()));
    gh.factory<_i11.CourseBloc>(() => _i11.CourseBloc(gh<_i3.ICourseFacade>()));
    return this;
  }
}
