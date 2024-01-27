import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/widgets/lessons_tab_view.dart';
import 'package:eduzap/presentation/course/widgets/tab_bar.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class TabWidgets extends StatelessWidget {
  const TabWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2,
                tabs: [
                  Tab(
                    child: CustomText(
                      text: "Overview",
                      fontSize: 15,
                      color: grey900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Tab(
                    child: CustomText(
                      text: "Lessons",
                      fontSize: 15,
                      color: grey900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 621,
          width: double.infinity,
          child: TabBarView(
            children: [
              OverViewTabView(),
              LessonsTabView(),
            ],
          ),
        )
      ],
    );
  }
}
