import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/search/widgets/result_course_card.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50),
          children: [
            const Center(
              child: CustomText(
                text: "My save list",
                fontSize: 22,
                color: grey900,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            HorizCourseCard(courses: courses),
          ],
        ),
      ),
    );
  }
}
