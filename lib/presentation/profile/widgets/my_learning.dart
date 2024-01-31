import 'package:eduzap/application/my_learnings/mylearnings_bloc.dart';
import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<MylearningsBloc>()
        .add(const MylearningsEvent.getMyLearnings());
    return BlocBuilder<MylearningsBloc, MylearningsState>(
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
          itemCount: state.myLearningList.length,
          itemBuilder: (context, index) {
            final course = state.myLearningList[index];
            return CourseCard(
              courseName: course.course['courseTitle'],
              courseImg: course.course['imageUrl'],
              rating: course.course['rating'],
              tutorName: course.course['tutorName'],
              onTap: () {},
            );
          },
        );
      },
    );
  }
}
