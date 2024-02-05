import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/domain/core/signout/signout.dart';
import 'package:eduzap/presentation/admin_course/screens/admin_courses_screen.dart';
import 'package:eduzap/presentation/admin_home/widgets/latest_subscription.dart';
import 'package:eduzap/presentation/admin_home/widgets/statistics.dart';
import 'package:eduzap/presentation/admin_home/widgets/top_rated_course.dart';
import 'package:eduzap/presentation/core/colors.dart';

import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseBloc>().add(const CourseEvent.topRatedCourse());
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
