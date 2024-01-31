import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/course_screen.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesByCategory extends StatelessWidget {
  final String category;
  const CoursesByCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    context.read<CourseBloc>().add(const CourseEvent.clear());
    context
        .read<CourseBloc>()
        .add(CourseEvent.coursesByCategory(category.toLowerCase()));
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: category,
          fontSize: 20,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<CourseBloc, CourseState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (state.coursebyCategoryList.isEmpty) {
              return const Center(
                child: CustomText(
                  text: "Courses are empty",
                  fontSize: 20,
                  color: grey900,
                ),
              );
            } else {
              return GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 10,
                ),
                itemCount: state.coursebyCategoryList.length,
                itemBuilder: (context, index) {
                  final course = state.coursebyCategoryList[index];
                  return CourseCard(
                    courseName: course.courseTitle,
                    courseImg: course.imageUrl,
                    rating: course.rating,
                    tutorName: course.tutorName,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CourseScreen(
                            id: course.id,
                            videoUrl: course.videoUrl,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}
