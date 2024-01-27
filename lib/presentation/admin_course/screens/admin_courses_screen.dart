import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/profile/widgets/my_learning.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class AdminCourseScreen extends StatelessWidget {
  const AdminCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: CustomPrimaryButton(
                    text: "Upload Course",
                    color: primaryBlue,
                    textColor: Colors.white,
                  ),
                ),
              )
            ];
          },
          body: const MyLearning(),
        ),
      ),
    );
  }
}
