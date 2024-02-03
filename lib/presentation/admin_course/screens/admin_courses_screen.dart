import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/presentation/admin_course/screens/course_video_picker.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/course_screen.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminCourseScreen extends StatelessWidget {
  const AdminCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseBloc>().add(const CourseEvent.getAllCourses());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: "Courses",
          fontSize: 22,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: CustomPrimaryButton(
                    text: "Upload Course",
                    color: primaryBlue,
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CourseVideoPickerScreen(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ];
          },
          body: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              return GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: state.courses.length,
                itemBuilder: (context, index) {
                  final course = state.courses[index];
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
            },
          ),
        ),
      ),
    );
  }
}
