import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/presentation/course/widgets/lesson_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LessonsTabView extends StatelessWidget {
  const LessonsTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseBloc, CourseState>(
      builder: (context, state) {
        return SizedBox(
          child: ListView(
            children: List.generate(
              state.courses.length,
              (index) {
                final lesson = state.course.lessons.reversed.toList();
                state.course.lessons.reversed;
                return LessonCard(
                  index: index + 1,
                  title: lesson[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
