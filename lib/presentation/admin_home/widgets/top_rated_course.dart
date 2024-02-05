import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/course_screen.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedCourse extends StatelessWidget {
  const TopRatedCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 30),
          child: CustomText(
            text: "Top Rated Courses",
            fontSize: 26,
            color: grey900,
            fontWeight: FontWeight.bold,
          ),
        ),
        BlocBuilder<CourseBloc, CourseState>(
          builder: (context, state) {
            return SizedBox(
              height: 370,
              child: ListView.separated(
                itemCount: state.topRatedCourseList.length,
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final course = state.topRatedCourseList[index];
                  return CourseCard(
                    courseName: course.courseTitle,
                    courseImg: course.imageUrl,
                    rating: course.rating,
                    tutorName: course.tutorName,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CourseScreen(
                            id: course.id,
                            videoUrl: course.videoUrl,
                          ),
                        ),
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
              ),
            );
          },
        )
      ],
    );
  }
}
