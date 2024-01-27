import 'package:eduzap/presentation/admin_course/screens/upload_course.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class LessonTextField extends StatefulWidget {
  final int index;
  const LessonTextField(this.index, {super.key});
  @override
  LessonTextFieldState createState() => LessonTextFieldState();
}

class LessonTextFieldState extends State<LessonTextField> {
  late TextEditingController _lessonController;

  @override
  void initState() {
    super.initState();
    _lessonController = TextEditingController();
  }

  @override
  void dispose() {
    _lessonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _lessonController.text = UploadCourseState.lessonsList[widget.index];
    });

    return CustomTextField(
      hintText: "Enter Lesson name",
      onChanged: (v) => UploadCourseState.lessonsList[widget.index] = v,
      controller: _lessonController,
    );
  }
}
