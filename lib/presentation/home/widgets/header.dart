import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Hello, ${user?.displayName}!",
                    fontSize: 26,
                    color: grey900,
                    fontWeight: FontWeight.bold,
                  ),
                  const CustomText(
                    text: "What do you wanna learn today?",
                    fontSize: 14,
                    color: grey500,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                ],
              ),
              CircleAvatar(
                radius: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CachedNetworkImage(
                    imageUrl: "${user?.photoURL}",
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
            ],
          );
        },
      ),
    );
  }
}
