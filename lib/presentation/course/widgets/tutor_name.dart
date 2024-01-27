import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class TutorName extends StatelessWidget {
  const TutorName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/avatar.jpg',
              fit: BoxFit.cover,
              width: 50,
            ),
          ),
          const SizedBox(width: 10),
          const CustomText(
            text: 'Rafael',
            fontSize: 15,
            color: grey500,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
