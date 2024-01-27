import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final String imageName;
  final VoidCallback? onTap;
  const CategoryCard({
    super.key,
    required this.text,
    required this.imageName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              'assets/images/$imageName',
              fit: BoxFit.cover,
              width: 180,
              height: 160,
            ),
          ),
          Container(
            width: 180,
            height: 160,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(1),
                ],
              ),
            ),
            child: Center(
              child: CustomText(
                text: text,
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
