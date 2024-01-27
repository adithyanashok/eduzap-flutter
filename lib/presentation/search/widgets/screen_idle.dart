import 'package:eduzap/presentation/course/courses_by_category_screen.dart';
import 'package:eduzap/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class SearchScreenIdle extends StatelessWidget {
  SearchScreenIdle({
    super.key,
    required this.size,
  });

  final Size size;

  final List<CategoryCard> categories = [
    const CategoryCard(text: "Coding", imageName: 'coding.jpg'),
    const CategoryCard(text: "Designing", imageName: 'graphic.jpg'),
    const CategoryCard(text: "Photography", imageName: 'photography.jpg'),
    const CategoryCard(text: "Art", imageName: 'art.jpg'),
    const CategoryCard(text: "Marketing", imageName: 'marketing.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 2,
          childAspectRatio: 1.3,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryCard(
            text: category.text,
            imageName: category.imageName,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    CoursesByCategory(category: category.text),
              ),
            ),
          );
        },
      ),
    );
  }
}
