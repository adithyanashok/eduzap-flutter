import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

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
