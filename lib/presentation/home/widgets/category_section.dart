import 'package:eduzap/presentation/course/courses_by_category_screen.dart';
import 'package:eduzap/presentation/home/widgets/section_label.dart';
import 'package:eduzap/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  CategorySection({
    super.key,
  });

  final List<CategoryCard> categories = [
    const CategoryCard(text: "Coding", imageName: 'coding.jpg'),
    const CategoryCard(text: "Designing", imageName: 'graphic.jpg'),
    const CategoryCard(text: "Photography", imageName: 'photography.jpg'),
    const CategoryCard(text: "Art", imageName: 'art.jpg'),
    const CategoryCard(text: "Marketing", imageName: 'marketing.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SectionLabel(
          name: 'Popular category\nour  in platform',
          buttonName: 'see more',
        ),
        const SizedBox(height: 30),
        LayoutBuilder(builder: (context, constraints) {
          return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
                  List.generate(constraints.maxWidth >= 590 ? 3 : 2, (index) {
                return CategoryCard(
                  text: 'Coding',
                  imageName: 'coding.jpg',
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const CoursesByCategory(category: 'Coding'),
                    ),
                  ),
                );
              }));
        })
      ],
    );
  }
}
