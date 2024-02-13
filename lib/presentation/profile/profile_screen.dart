import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/profile/widgets/my_learning.dart';
import 'package:eduzap/presentation/profile/widgets/profile_header.dart';
import 'package:eduzap/presentation/subscription/subscription_screen.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UserBloc>().add(const UserEvent.getCurrentUser());
    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SafeArea(
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverToBoxAdapter(
                      child: ProfileHeader(
                        email: state.user.email,
                        name: state.user.username,
                        imgae: state.user.profile,
                      ),
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
                body: Column(
                  children: [
                    const MyLearning(),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SubscriptionScreen(),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryBlue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: double.infinity,
                          height: 60,
                          child: const Center(
                            child: CustomText(
                              text: "Subscription",
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
