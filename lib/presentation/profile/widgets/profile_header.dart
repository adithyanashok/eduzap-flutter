import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/profile/profile_screen.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Image.asset(
            'assets/images/avatar.jpg',
            fit: BoxFit.cover,
            width: 120,
          ),
        ),
        const CustomText(
          text: 'Adithyan',
          fontSize: 22,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
        const CustomText(
          text: 'adithyanashok406@gmail.com',
          fontSize: 14,
          color: grey500,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 10),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MiniButton(text: "Edit profile"),
            SizedBox(width: 10),
            MiniButton(
              text: "Logout",
              buttonColor: red,
            ),
          ],
        ),
      ],
    );
  }
}
