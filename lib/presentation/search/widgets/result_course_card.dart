import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/domain/saved/model/saved_course_model.dart';
import 'package:eduzap/presentation/search/widgets/course_details.dart';
import 'package:flutter/material.dart';

class HorizCourseCard extends StatelessWidget {
  final CourseModel course;
  final VoidCallback onTap;
  const HorizCourseCard({
    super.key,
    required this.course,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: course.imageUrl,
                fit: BoxFit.cover,
                width: 90,
                height: 120,
              ),
            ),
            const SizedBox(width: 10),
            CourseDetails(
              courseName: course.courseTitle,
              author: course.tutorName,
              rating: course.rating,
            )
          ],
        ),
      ),
    );
  }
}
