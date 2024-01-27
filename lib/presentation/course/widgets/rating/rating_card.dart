import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  final String imageName;
  final String name;
  final String review;
  const RatingCard({
    super.key,
    required this.imageName,
    required this.name,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/$imageName',
              fit: BoxFit.cover,
              width: 50,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingCardHeader(name: name),
              SizedBox(
                width: 320,
                child: CustomText(
                  text: review,
                  fontSize: 14,
                  color: grey500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RatingCardHeader extends StatelessWidget {
  final String name;
  const RatingCardHeader({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: name,
            fontSize: 15,
            color: grey500,
            fontWeight: FontWeight.bold,
          ),
          AnimatedRatingStars(
            starSize: 12,
            readOnly: true,
            initialRating: 5,
            onChanged: (value) {},
            customFilledIcon: Icons.star_rate_rounded,
            customHalfFilledIcon: Icons.star_half_outlined,
            customEmptyIcon: Icons.star_border_rounded,
          )
        ],
      ),
    );
  }
}

class RatingLabel extends StatelessWidget {
  const RatingLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomText(
            text: "Rating",
            fontSize: 18,
            color: grey900,
            fontWeight: FontWeight.bold,
          ),
          Container(
            width: 120,
            height: 35,
            decoration: BoxDecoration(
              color: grey50,
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Center(
              child: CustomText(
                text: 'Add Rating',
                fontSize: 14,
                color: grey900,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
