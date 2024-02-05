import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/application/saved/saved_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/domain/saved/model/saved_course_model.dart';
import 'package:eduzap/presentation/admin_course/screens/upload_course.dart';
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
        BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.user.admin
                ? Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<CourseBloc>().add(
                                CourseEvent.deleteCourse(id),
                              );
                          context
                              .read<CourseBloc>()
                              .add(const CourseEvent.getAllCourses());
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UploadCourse(
                                edit: true,
                                courseModel: course,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  )
                : const SizedBox();
          },
        ),
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
