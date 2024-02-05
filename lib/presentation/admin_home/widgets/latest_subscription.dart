import 'package:eduzap/presentation/admin_home/widgets/subsciber.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class LatestSubscriptions extends StatelessWidget {
  const LatestSubscriptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 30),
          child: CustomText(
            text: "Latest Subscribers",
            fontSize: 26,
            color: grey900,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children: List.generate(
            5,
            (index) {
              return const Subscriber();
            },
          ),
        ),
      ],
    );
  }
}
