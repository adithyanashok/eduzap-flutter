import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/application/rating/rating_bloc.dart';
import 'package:eduzap/application/saved/saved_bloc.dart';
import 'package:eduzap/presentation/course/widgets/app_bar.dart';
import 'package:eduzap/presentation/course/widgets/course_details.dart';
import 'package:eduzap/presentation/course/widgets/tab_widget.dart';
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
    context.read<CourseBloc>().add(CourseEvent.getCourse(widget.id));
    context.read<SavedBloc>().add(SavedEvent.getSaved(widget.id));
    context.read<RatingBloc>().add(const RatingEvent.clear());
    context.read<RatingBloc>().add(RatingEvent.getRatingByCourse(widget.id));
    return DefaultTabController(
      length: 2,
      child: BlocBuilder<CourseBloc, CourseState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: CourseAppBar(title: "Details", course: state.course),
            ),
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    children: [
                      SizedBox(
                        child: FlickVideoPlayer(flickManager: flickManager),
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
