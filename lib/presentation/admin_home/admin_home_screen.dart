import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/application/earnings/earnings_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/domain/core/signout/signout.dart';
import 'package:eduzap/presentation/admin_home/widgets/latest_subscription.dart';
import 'package:eduzap/presentation/admin_home/widgets/statistics.dart';
import 'package:eduzap/presentation/admin_home/widgets/top_rated_course.dart';
import 'package:eduzap/presentation/core/colors.dart';

import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EarningsBloc>().add(const EarningsEvent.getTotalEarnings());

      context.read<CourseBloc>().add(const CourseEvent.topRatedCourse());
      context.read<CourseBloc>().add(const CourseEvent.getAllCourses());
      context.read<UserBloc>().add(const UserEvent.getAllStudents());
      context.read<UserBloc>().add(const UserEvent.getCurrentUser());
    });
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Home",
          color: grey900,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => signOut(context),
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          Statistics(),
          TopRatedCourse(),
          LatestSubscriptions(),
        ],
      ),
    );
  }
}
