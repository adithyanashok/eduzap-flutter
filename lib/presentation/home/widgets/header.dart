import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Hello, Adithyan!",
                fontSize: 26,
                color: grey900,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: "What do you wanna learn today?",
                fontSize: 14,
                color: grey500,
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/avatar.jpg',
              fit: BoxFit.cover,
              width: 55,
            ),
          )
        ],
      ),
    );
  }
}
