import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CourseOverviewText extends StatelessWidget {
  final IconData iconData;
  final String text;
  const CourseOverviewText({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 18,
          color: grey300,
        ),
        const SizedBox(width: 5),
        CustomText(
          text: text,
          fontSize: 14,
          color: grey300,
          fontWeight: FontWeight.w300,
        ),
      ],
    );
  }
}
