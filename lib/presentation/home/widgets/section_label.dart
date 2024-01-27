import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SectionLabel extends StatelessWidget {
  final String name;
  final String buttonName;
  const SectionLabel({
    super.key,
    required this.name,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: name,
            fontSize: 24,
            color: grey900,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
          CustomText(
            text: buttonName,
            fontSize: 14,
            color: grey500,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.1,
          )
        ],
      ),
    );
  }
}
