import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/profile/widgets/my_learning.dart';
import 'package:eduzap/presentation/profile/widgets/profile_header.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverToBoxAdapter(
                child: ProfileHeader(),
              ),
              const SliverPadding(
                padding: EdgeInsets.only(top: 25.0, left: 25, bottom: 15),
                sliver: SliverToBoxAdapter(
                  child: CustomText(
                    text: 'My Learning',
                    fontSize: 18,
                    color: grey900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ];
          },
          body: const MyLearning(),
        ),
      ),
    );
  }
}
