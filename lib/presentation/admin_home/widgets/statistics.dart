import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/presentation/admin_course/screens/admin_courses_screen.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Statistics extends StatelessWidget {
  const Statistics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(figure: '100', text: "Students"),
            Card(figure: "1.5K", text: "Earnings"),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<CourseBloc, CourseState>(
              builder: (context, state) {
                return Card(figure: '${state.courses.length}', text: "Courses");
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AdminCourseScreen(),
                  ),
                );
              },
              child: const Card(figure: 'View', text: "Courses"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
              color: primaryBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 60,
            child: const Center(
              child: CustomText(
                text: "Teachers",
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Card extends StatelessWidget {
  final String? figure;
  final String text;
  final double width;
  final double height;
  const Card({
    super.key,
    this.figure,
    required this.text,
    this.width = 180,
    this.height = 180,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: figure ?? "",
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: text,
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
