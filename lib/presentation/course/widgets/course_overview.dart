import 'package:eduzap/presentation/course/widgets/course_overview_text.dart';
import 'package:flutter/material.dart';

class CourseOverView extends StatelessWidget {
  final String lessons;
  final String rating;
  const CourseOverView({
    super.key,
    required this.lessons,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          CourseOverviewText(
            iconData: Icons.star_border_rounded,
            text: rating,
          ),
          const SizedBox(width: 20),
          CourseOverviewText(
            text: "$lessons Lessons",
            iconData: Icons.videocam_outlined,
          ),
        ],
      ),
    );
  }
}
