import 'package:eduzap/application/saved/saved_bloc.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/course_screen.dart';
import 'package:eduzap/presentation/search/widgets/result_course_card.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SavedBloc>().add(const SavedEvent.getSavedList());
    return Scaffold(
      body: BlocBuilder<SavedBloc, SavedState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SafeArea(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 50),
                children: [
                  const Center(
                    child: CustomText(
                      text: "My save list",
                      fontSize: 22,
                      color: grey900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: List.generate(
                      state.savedCourseList.length,
                      (index) {
                        final course = state.savedCourseList[index];
                        return HorizCourseCard(
                          course: CourseModel.fromJson(course.course),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CourseScreen(
                                id: course.courseId,
                                videoUrl: course.course['videoUrl'],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
