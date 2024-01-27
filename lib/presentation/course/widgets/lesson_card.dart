import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  final String title;
  final int index;
  const LessonCard({
    super.key,
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: CustomText(
              text: '$index. $title',
              fontSize: 20,
              color: grey900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
