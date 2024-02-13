import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/presentation/admin_home/widgets/subsciber.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return Column(
              children: List.generate(
                state.studentsList.length,
                (index) {
                  final student = state.studentsList[index];
                  return Subscriber(
                    image: student.profile,
                    name: student.username,
                    email: student.email,
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
