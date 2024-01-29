import 'dart:developer';

import 'package:eduzap/application/saved/saved_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/domain/saved/model/saved_course_model.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseAppBar extends StatelessWidget {
  final String title;
  final CourseModel course;
  CourseAppBar({
    super.key,
    required this.title,
    required this.course,
  });
  final userId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: title,
        fontSize: 20,
        color: grey900,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      actions: [
        BlocBuilder<SavedBloc, SavedState>(
          builder: (context, state) {
            return state.savedCourse.courseId == course.id
                ? const SizedBox()
                : GestureDetector(
                    onTap: () {
                      context.read<SavedBloc>().add(
                            SavedEvent.saveCourse(
                              SavedCourseModel(
                                course: CourseModel(
                                  courseTitle: course.courseTitle,
                                  courseDescription: course.courseDescription,
                                  courseOverview: course.courseOverview,
                                  tutorName: course.tutorName,
                                  rating: course.rating,
                                  category: course.category,
                                  lessons: course.lessons,
                                  videoUrl: course.videoUrl,
                                  imageUrl: course.imageUrl,
                                  id: course.id,
                                ).toJson(),
                                userId: userId!,
                                id: '',
                                courseId: course.id,
                              ),
                            ),
                          );
                    },
                    child: const Icon(
                      Icons.save_alt_outlined,
                    ),
                  );
          },
        ),
      ],
    );
  }
}
