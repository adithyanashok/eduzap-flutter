import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/search/widgets/rating_widget.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
    required this.courseName,
    required this.author,
    required this.rating,
  });

  final String courseName;
  final String author;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 250,
          child: CustomText(
            text: courseName,
            fontSize: 22,
            color: grey900,
            fontWeight: FontWeight.bold,
            maxlines: 2,
          ),
        ),
        CustomText(
          text: author,
          fontSize: 14,
          color: grey500,
          fontWeight: FontWeight.w400,
        ),
        RatingWidget(rating: rating)
      ],
    );
  }
}
