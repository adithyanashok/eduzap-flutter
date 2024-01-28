import 'package:eduzap/presentation/course/courses_by_category_screen.dart';
import 'package:eduzap/presentation/home/widgets/section_label.dart';
import 'package:eduzap/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionLabel(
          name: 'Popular category\nour  in platform',
          buttonName: 'see more',
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryCard(
              text: 'Coding',
              imageName: 'coding.jpg',
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const CoursesByCategory(category: 'Coding'),
                ),
              ),
            ),
            CategoryCard(
              text: 'Designing',
              imageName: 'graphic.jpg',
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const CoursesByCategory(category: 'Designing'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
