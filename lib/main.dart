import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/application/rating/rating_bloc.dart';
import 'package:eduzap/application/signin/signin_bloc.dart';
import 'package:eduzap/application/signup/signup_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/domain/di/injectable.dart';
import 'package:eduzap/firebase_options.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/main/main_screen.dart';
import 'package:eduzap/presentation/signin/widgets/sign_in_options.dart';
import 'package:eduzap/presentation/signup/signup_screen.dart';
import 'package:eduzap/presentation/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjection();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CourseBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignupBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SigninBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<RatingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'EduZap',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryBlue),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
