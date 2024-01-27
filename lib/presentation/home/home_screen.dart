import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/home/widgets/category_section.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/home/widgets/course_section.dart';
import 'package:eduzap/presentation/home/widgets/header.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseBloc>().add(const CourseEvent.getAllCourses());
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50),
        children: [
          const Header(),
          CustomFilledFormField(
            hintText: "Graphic Illustration",
            onFieldSubmitted: (value) {},
            suffixIcon: const Icon(
              Icons.search_outlined,
              color: grey400,
            ),
          ),
          const CategorySection(),
          const SizedBox(height: 30),
          BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              return CourseSection(
                sectionName: "Most watching\ncategory",
                courses: state.courses,
              );
            },
          ),
          const SizedBox(height: 30),
          BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              return CourseSection(
                sectionName: 'What others are\nwatching in app',
                courses: state.courses,
              );
            },
          )
        ],
      ),
    );
  }
}
