import 'dart:developer';

import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/application/my_learnings/mylearnings_bloc.dart';
import 'package:eduzap/application/rating/rating_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/widgets/app_bar.dart';
import 'package:eduzap/presentation/course/widgets/course_details.dart';
import 'package:eduzap/presentation/course/widgets/tab_widget.dart';
import 'package:eduzap/presentation/subscription/subscription_screen.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class CourseScreen extends StatefulWidget {
  final String id;
  final String videoUrl;
  const CourseScreen({super.key, required this.id, required this.videoUrl});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late VideoPlayerController videoPlayerController;
  late FlickManager flickManager;
  late Duration? duration;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );
    flickManager = FlickManager(
      videoPlayerController: videoPlayerController,
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(minutes: 5),
      () {
        context
            .read<MylearningsBloc>()
            .add(MylearningsEvent.saveMyLearning(widget.id));
      },
    );
    context.read<CourseBloc>().add(CourseEvent.getCourse(widget.id));
    context.read<RatingBloc>().add(const RatingEvent.clear());
    context.read<RatingBloc>().add(RatingEvent.getRatingByCourse(widget.id));
    final user = context.read<UserBloc>().state.user;
    log(user.toString());
    return DefaultTabController(
      length: 2,
      child: BlocBuilder<CourseBloc, CourseState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: CourseAppBar(
                title: "Details",
                course: state.course,
                id: widget.id,
              ),
            ),
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    children: [
                      SizedBox(
                        child: user.subscriber || user.admin == true
                            ? FlickVideoPlayer(flickManager: flickManager)
                            : const SubscribeBox(),
                      ),
                      CourseDetails(
                        courseDescription: state.course.courseDescription,
                        courseLessons: state.course.lessons.length.toString(),
                        courseRating: state.course.rating.toString(),
                        courseTitle: state.course.courseTitle,
                        tutorName: state.course.tutorName,
                      ),
                      const TabWidgets()
                    ],
                  ),
          );
        },
      ),
    );
  }
}

class SubscribeBox extends StatelessWidget {
  const SubscribeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomText(
            text: "You need to subscribe to watch tutorials",
            fontSize: 16,
            color: Colors.grey,
          ),
          Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  primaryBlue,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SubscriptionScreen(),
                  ),
                );
              },
              child: const CustomText(
                text: 'Subscribe',
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
