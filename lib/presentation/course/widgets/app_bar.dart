import 'package:eduzap/application/saved/saved_bloc.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/domain/saved/model/saved_course_model.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseAppBar extends StatelessWidget {
  final String id;
  final String title;
  final CourseModel course;
  CourseAppBar({
    super.key,
    required this.title,
    required this.course,
    required this.id,
  });
  final userId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    context.read<SavedBloc>().add(SavedEvent.getSaved(id));

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
                                course: course.toJson(),
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
