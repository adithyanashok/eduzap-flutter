import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:flutter/material.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        mainAxisSpacing: 25,
        crossAxisSpacing: 10,
      ),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return CourseCard(
          courseName: course.courseName,
          courseImg: course.courseImg,
          rating: course.rating,
          tutorName: course.tutorName,
          onTap: () {},
        );
      },
    );
  }
}
