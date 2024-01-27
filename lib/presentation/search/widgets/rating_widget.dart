import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedRatingStars(
          onChanged: (value) {},
          maxRating: 1,
          starSize: 15,
          initialRating: 1,
          filledColor: Colors.yellow,
          customFilledIcon: Icons.star_rate_rounded,
          customHalfFilledIcon: Icons.star_rate_rounded,
          customEmptyIcon: Icons.star_rate_rounded,
          readOnly: true,
        ),
        CustomText(
          text: "$rating",
          fontSize: 14,
          color: grey500,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
