import 'package:eduzap/domain/core/signout/signout.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final String imgae;
  const ProfileHeader({
    super.key,
    required this.name,
    required this.email,
    required this.imgae,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              imgae,
              fit: BoxFit.cover,
              width: 150,
              height: 160,
            ),
          ),
        ),
        CustomText(
          text: name,
          fontSize: 22,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          text: email,
          fontSize: 14,
          color: grey500,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MiniButton(text: "Edit profile"),
            const SizedBox(width: 10),
            MiniButton(
              text: "Logout",
              buttonColor: red,
              onTap: () => signOut(context),
            ),
          ],
        ),
      ],
    );
  }
}
