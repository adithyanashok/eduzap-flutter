import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/search/widgets/result_course_card.dart';
import 'package:eduzap/presentation/search/widgets/screen_idle.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseBloc>().add(const CourseEvent.clear());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<CourseBloc, CourseState>(
        builder: (context, state) {
          return ListView(
            children: [
              CustomFilledFormField(
                onFieldSubmitted: (value) {
                  context
                      .read<CourseBloc>()
                      .add(CourseEvent.searchCourse(value));
                },
                hintText: "Graphic Illustration",
                suffixIcon: const Icon(
                  Icons.search_outlined,
                  color: grey400,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: CustomText(
                  text: 'Categories',
                  fontSize: 14,
                  color: grey300,
                ),
              ),
              state.searchListOpt.fold(
                () => SearchScreenIdle(size: size),
                (either) {
                  return either.fold(
                    (failure) => failure.error == "Not found"
                        ? Center(
                            child: Text(failure.error),
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                    (success) => HorizCourseCard(
                      courses: state.searchList,
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
