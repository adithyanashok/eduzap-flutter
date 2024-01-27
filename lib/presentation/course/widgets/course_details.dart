import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/widgets/course_overview.dart';
import 'package:eduzap/presentation/course/widgets/tutor_name.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  final String tutorName;
  final String courseTitle;
  final String courseRating;
  final String courseLessons;
  final String courseDescription;
  const CourseDetails({
    super.key,
    required this.tutorName,
    required this.courseTitle,
    required this.courseRating,
    required this.courseLessons,
    required this.courseDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TutorName(),
          CustomText(
            text: courseTitle,
            fontSize: 22,
            color: grey900,
            fontWeight: FontWeight.bold,
          ),
          CourseOverView(
            lessons: courseLessons,
            rating: courseRating,
          ),
          CustomText(
            text: courseDescription,
            fontSize: 15,
            color: grey500,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
