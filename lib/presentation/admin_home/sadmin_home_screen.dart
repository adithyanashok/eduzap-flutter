import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Home",
          color: grey900,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          Statistics(),
          TopRatedCourse(),
          LatestSubscriptions(),
        ],
      ),
    );
  }
}

class LatestSubscriptions extends StatelessWidget {
  const LatestSubscriptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 30),
          child: CustomText(
            text: "Latest Subscribers",
            fontSize: 26,
            color: grey900,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children: List.generate(
            5,
            (index) {
              return const Subscriber();
            },
          ),
        ),
      ],
    );
  }
}

class Subscriber extends StatelessWidget {
  const Subscriber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset('assets/images/avatar.jpg'),
      ),
      title: const CustomText(
        text: "Adithyan",
        fontSize: 18,
        color: grey900,
        fontWeight: FontWeight.bold,
      ),
      subtitle: const CustomText(
        text: "adithyanashok406@gmail.com",
        fontSize: 14,
        color: grey500,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class TopRatedCourse extends StatelessWidget {
  const TopRatedCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 30),
          child: CustomText(
            text: "Top Rated Courses",
            fontSize: 26,
            color: grey900,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 370,
          child: ListView.separated(
            itemCount: courses.length,
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final course = courses[index];
              return CourseCard(
                courseName: course.courseName,
                courseImg: course.courseImg,
                rating: course.rating,
                tutorName: course.tutorName,
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
          ),
        )
      ],
    );
  }
}

class Statistics extends StatelessWidget {
  const Statistics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(figure: '100', text: "Students"),
            Card(figure: "1.5K", text: "Earnings"),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(figure: '150', text: "Courses"),
            Card(figure: 'View', text: "Courses"),
          ],
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  final String? figure;
  final String text;
  const Card({
    super.key,
    this.figure,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: figure ?? "",
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: text,
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
