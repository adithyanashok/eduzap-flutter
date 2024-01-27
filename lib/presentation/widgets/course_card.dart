import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/search/widgets/course_details.dart';
import 'package:flutter/material.dart';

class HorizCourseCard extends StatelessWidget {
  final List<CourseCard> courses;
  const HorizCourseCard({
    super.key,
    required this.courses,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        courses.length,
        (index) {
          final course = courses[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/${course.courseImg}',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 120,
                  ),
                ),
                const SizedBox(width: 10),
                CourseDetails(
                  courseName: course.courseName,
                  author: course.tutorName,
                  rating: course.rating,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
