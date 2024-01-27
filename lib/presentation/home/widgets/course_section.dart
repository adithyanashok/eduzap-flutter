import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/presentation/course/course_screen.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/home/widgets/section_label.dart';
import 'package:flutter/material.dart';

class CourseSection extends StatelessWidget {
  final List<CourseModel> courses;
  final String sectionName;
  const CourseSection({
    super.key,
    required this.courses,
    required this.sectionName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionLabel(
          name: sectionName,
          buttonName: 'see more',
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(courses.length, (index) {
            final course = courses[index];
            return CourseCard(
              courseName: course.courseTitle,
              courseImg: course.imageUrl,
              rating: course.rating,
              tutorName: course.tutorName,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CourseScreen(
                      videoUrl: course.videoUrl,
                      id: course.id!,
                    ),
                  ),
                );
              },
            );
          }),
        )
      ],
    );
  }
}
