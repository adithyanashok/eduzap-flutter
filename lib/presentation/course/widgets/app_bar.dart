import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CourseAppBar extends StatelessWidget {
  final String title;
  const CourseAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: title,
        fontSize: 20,
        color: grey900,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.save_alt_outlined),
        ),
      ],
    );
  }
}
