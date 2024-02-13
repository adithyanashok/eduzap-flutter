import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class TutorName extends StatelessWidget {
  final String tutorName;
  const TutorName({
    super.key,
    required this.tutorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(
            text: tutorName,
            fontSize: 15,
            color: grey500,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
