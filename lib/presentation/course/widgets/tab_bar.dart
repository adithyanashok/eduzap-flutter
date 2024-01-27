import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/widgets/rating/rating_card.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OverViewTabView extends StatelessWidget {
  const OverViewTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<CourseBloc, CourseState>(
        builder: (context, state) {
          return ListView(
            children: [
              BlocBuilder<CourseBloc, CourseState>(
                builder: (context, state) {
                  return CustomText(
                    text: state.course.courseOverview,
                    fontSize: 15,
                    color: grey500,
                    fontWeight: FontWeight.w400,
                  );
                },
              ),
              const RatingLabel(),
              Column(
                children: List.generate(
                  ratings.length,
                  (index) {
                    final rating = ratings[index];
                    return RatingCard(
                      imageName: rating.imageName,
                      name: rating.name,
                      review: rating.review,
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
