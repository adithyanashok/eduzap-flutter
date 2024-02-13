import 'dart:io';

// import 'package:dartz/dartz.dart';
import 'package:eduzap/application/course/course_bloc.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/presentation/admin_course/widgets/lesson_text_field.dart';
import 'package:eduzap/presentation/admin_course/widgets/video_and_image.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/core/snack_bar.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class UploadCourse extends StatefulWidget {
  final String? imagePath;
  final String? videoPath;
  final bool edit;
  final CourseModel? courseModel;
  const UploadCourse({
    super.key,
    this.videoPath,
    this.imagePath,
    this.edit = false,
    this.courseModel,
  });

  @override
  UploadCourseState createState() => UploadCourseState();
}

class UploadCourseState extends State<UploadCourse> {
  // Controllers
  late VideoPlayerController videoPlayerController;
  late TextEditingController courseTitleController;
  late TextEditingController courseDescController;
  late TextEditingController courseOverviewController;
  late TextEditingController courseTutorNameController;
  late TextEditingController courseCategoryController;
  static List<String> lessonsList = [""];

  @override
  void initState() {
    super.initState();
    setState(() {
      videoPlayerController =
          VideoPlayerController.file(File(widget.videoPath ?? ""));
    });
    videoPlayerController.initialize();
    videoPlayerController.setVolume(1);
    courseTitleController =
        TextEditingController(text: widget.courseModel?.courseTitle);
    courseDescController =
        TextEditingController(text: widget.courseModel?.courseDescription);
    courseOverviewController =
        TextEditingController(text: widget.courseModel?.courseOverview);
    courseTutorNameController =
        TextEditingController(text: widget.courseModel?.tutorName);
    courseCategoryController =
        TextEditingController(text: widget.courseModel?.category);
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    courseTitleController.dispose();
    courseDescController.dispose();
    courseOverviewController.dispose();
    courseTutorNameController.dispose();
    courseCategoryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: "Upload Course",
          fontSize: 22,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocConsumer<CourseBloc, CourseState>(
        listener: (context, state) {
          state.courseOpt.fold(
            () => {},
            (either) => either.fold(
              (failure) {
                showSnackBar(context, failure.error);
              },
              (success) {
                context
                    .read<CourseBloc>()
                    .add(const CourseEvent.getAllCourses());
                Navigator.of(context).pop();
                showSnackBar(
                  context,
                  widget.edit ? "Course Updated" : "Course uploaded",
                  status: true,
                );
              },
            ),
          );
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  if (widget.edit == false)
                    VideoAndImageRow(
                      videoPlayerController: videoPlayerController,
                      imageFile: File(widget.imagePath ?? ""),
                    )
                  else
                    const SizedBox(),
                  CustomTextField(
                    hintText: "Course Title",
                    controller: courseTitleController,
                  ),
                  CustomTextField(
                    hintText: "Course Description",
                    maxLength: 100,
                    controller: courseDescController,
                  ),
                  CustomTextField(
                    hintText: "Course Overview",
                    maxLength: 400,
                    controller: courseOverviewController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: DropdownMenu(
                      width: 350,
                      label: const Text("Category"),
                      onSelected: (value) {
                        courseCategoryController.text = value ?? "coding";
                      },
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(value: "coding", label: "Coding"),
                        DropdownMenuEntry(
                            value: "photography", label: "Photography"),
                        DropdownMenuEntry(
                            value: "designing", label: "Designing"),
                      ],
                    ),
                  ),
                  CustomTextField(
                    hintText: "Tutor name",
                    controller: courseTutorNameController,
                  ),
                  !widget.edit
                      ? Column(
                          children: [
                            const Text(
                              'Add Lessons',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                            ..._getLessons(),
                          ],
                        )
                      : const SizedBox(),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(height: 20),
                  CustomPrimaryButton(
                    text: widget.edit ? "Edit" : "Upload",
                    color: primaryBlue,
                    textColor: Colors.white,
                    onTap: () {
                      if (widget.edit) {
                        BlocProvider.of<CourseBloc>(context).add(
                          CourseEvent.editCourse(
                            widget.courseModel!.id,
                            CourseModel(
                              courseTitle: courseTitleController.text,
                              courseDescription: courseDescController.text,
                              courseOverview: courseOverviewController.text,
                              tutorName: courseTutorNameController.text,
                              lessons: lessonsList,
                              rating: 0,
                              category:
                                  courseCategoryController.text.toLowerCase(),
                              videoUrl: widget.videoPath ?? "",
                              imageUrl: widget.imagePath ?? "",
                              id: '',
                            ),
                          ),
                        );
                      } else {
                        BlocProvider.of<CourseBloc>(context).add(
                          CourseEvent.uploadCourse(
                            course: CourseModel(
                              courseTitle: courseTitleController.text,
                              courseDescription: courseDescController.text,
                              courseOverview: courseOverviewController.text,
                              tutorName: courseTutorNameController.text,
                              lessons: lessonsList,
                              rating: 0,
                              category:
                                  courseCategoryController.text.toLowerCase(),
                              videoUrl: widget.videoPath ?? "",
                              imageUrl: widget.imagePath ?? "",
                              id: '',
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  /// get firends text-fields

  List<Widget> _getLessons() {
    List<Widget> lessonsTextFields = [];
    for (int i = 0; i < lessonsList.length; i++) {
      lessonsTextFields.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            // Add buttons first, then the input field
            _addRemoveButton(true, i, lessonsList.length), // Green add button
            const SizedBox(width: 8),
            _addRemoveButton(false, i, lessonsList.length), // Red remove button
            const SizedBox(width: 16),
            Expanded(child: LessonTextField(i)),
          ],
        ),
      ));
    }
    return lessonsTextFields;
  }

  /// add / remove button
  Widget _addRemoveButton(bool add, int index, int len) {
    return InkWell(
      onTap: () {
        if (add) {
          // add new text-fields at the top of all lessons textfields
          lessonsList.insert(0, '');
        } else {
          if (len != 1) {
            lessonsList.removeAt(index);
          }
        }
        setState(() {});
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: (add) ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          (add) ? Icons.add : Icons.remove,
          color: Colors.white,
        ),
      ),
    );
  }
}
