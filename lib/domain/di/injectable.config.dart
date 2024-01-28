// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:eduzap/application/course/course_bloc.dart' as _i17;
import 'package:eduzap/application/rating/rating_bloc.dart' as _i13;
import 'package:eduzap/application/signin/signin_bloc.dart' as _i14;
import 'package:eduzap/application/signup/signup_bloc.dart' as _i15;
import 'package:eduzap/application/user/user_bloc.dart' as _i16;
import 'package:eduzap/domain/course/i_course_facade.dart' as _i3;
import 'package:eduzap/domain/rating/i_rating_facade.dart' as _i5;
import 'package:eduzap/domain/signin/i_signin_facade.dart' as _i7;
import 'package:eduzap/domain/signup/i_signup_facade.dart' as _i9;
import 'package:eduzap/domain/user/i_user_facade.dart' as _i11;
import 'package:eduzap/infrastructure/course/course_repositary.dart' as _i4;
import 'package:eduzap/infrastructure/rating/rating_repositary.dart' as _i6;
import 'package:eduzap/infrastructure/signin/signin_repositary.dart' as _i8;
import 'package:eduzap/infrastructure/signup/signup_repositary.dart' as _i10;
import 'package:eduzap/infrastructure/user/user_repositary.dart' as _i12;
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
    gh.lazySingleton<_i5.IRatingFacade>(() => _i6.RatingRepositary());
    gh.lazySingleton<_i7.ISigninFacade>(() => _i8.SigninRepositary());
    gh.lazySingleton<_i9.ISignupFacade>(() => _i10.SignupRepositary());
    gh.lazySingleton<_i11.IUserFacade>(() => _i12.UserRepositary());
    gh.factory<_i13.RatingBloc>(() => _i13.RatingBloc(gh<_i5.IRatingFacade>()));
    gh.factory<_i14.SigninBloc>(() => _i14.SigninBloc(gh<_i7.ISigninFacade>()));
    gh.factory<_i15.SignupBloc>(() => _i15.SignupBloc(gh<_i9.ISignupFacade>()));
    gh.factory<_i16.UserBloc>(() => _i16.UserBloc(gh<_i11.IUserFacade>()));
    gh.factory<_i17.CourseBloc>(() => _i17.CourseBloc(gh<_i3.ICourseFacade>()));
    return this;
  }
}
