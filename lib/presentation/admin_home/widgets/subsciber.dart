import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class Subscriber extends StatelessWidget {
  final String image;
  final String name;
  final String email;
  const Subscriber({
    super.key,
    required this.image,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.cover,
            width: 150,
            height: 160,
            progressIndicatorBuilder: (context, url, progress) =>
                const CircularProgressIndicator(),
            errorWidget: (context, url, error) => Image.asset(
              'assets/images/avatar1.png',
              fit: BoxFit.cover,
              width: 150,
              height: 160,
            ),
          ),
        ),
      ),
      title: CustomText(
        text: name,
        fontSize: 18,
        color: grey900,
        fontWeight: FontWeight.bold,
      ),
      subtitle: CustomText(
        text: email,
        fontSize: 14,
        color: grey500,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
