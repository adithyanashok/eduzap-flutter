import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:eduzap/application/rating/rating_bloc.dart';
import 'package:eduzap/domain/rating/model/rating_model.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatingCard extends StatelessWidget {
  final String imageName;
  final String name;
  final String review;
  final double rating;
  const RatingCard({
    super.key,
    required this.imageName,
    required this.name,
    required this.review,
    required this.rating,
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
              RatingCardHeader(
                name: name,
                rating: rating,
              ),
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
  final double rating;
  const RatingCardHeader({
    super.key,
    required this.name,
    required this.rating,
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
            initialRating: rating,
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
  final TextEditingController textEditingController = TextEditingController();
  final String courseId;
  RatingLabel({
    super.key,
    required this.courseId,
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
          InkWell(
            onTap: () {
              addRatingPopup(context);
            },
            child: Container(
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
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> addRatingPopup(BuildContext context) {
    double rating = 1;
    return showDialog(
      context: context,
      builder: (context) {
        return BlocConsumer<RatingBloc, RatingState>(
          listener: (context, state) {
            if (state.errorText == null) {
              Navigator.of(context).pop();
              context
                  .read<RatingBloc>()
                  .add(RatingEvent.getRatingByCourse(courseId));
            }
          },
          builder: (context, state) {
            return SimpleDialog(
              surfaceTintColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              title: const CustomText(
                text: "Add your rating",
                fontSize: 16,
                color: grey900,
                fontWeight: FontWeight.bold,
              ),
              children: [
                Center(
                  child: AnimatedRatingStars(
                    onChanged: (v) {
                      rating = v;
                    },
                    customFilledIcon: Icons.star_rate_rounded,
                    customHalfFilledIcon: Icons.star_half_rounded,
                    customEmptyIcon: Icons.star_border_rounded,
                    starSize: 19,
                    initialRating: 1,
                  ),
                ),
                CustomFilledFormField(
                  hintText: 'Type here...',
                  onFieldSubmitted: (value) {},
                  controller: textEditingController,
                  errorText: state.errorText,
                ),
                CustomPrimaryButton(
                  text: "Submit",
                  color: primaryBlue,
                  textColor: Colors.white,
                  onTap: () {
                    context.read<RatingBloc>().add(
                          RatingEvent.addRating(
                            RatingModel(
                              profile: "profile",
                              name: "Adi",
                              rating: rating,
                              ratingString: textEditingController.text,
                              courseId: courseId,
                            ),
                          ),
                        );
                  },
                )
              ],
            );
          },
        );
      },
    );
  }
}
