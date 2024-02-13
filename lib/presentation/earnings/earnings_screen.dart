import 'package:eduzap/application/earnings/earnings_bloc.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EarningsScreen extends StatelessWidget {
  const EarningsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<EarningsBloc>().add(const EarningsEvent.getEarnings());
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Latest Earnings",
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      body: BlocBuilder<EarningsBloc, EarningsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: List.generate(
                state.earningsList.length,
                (index) {
                  final earning = state.earningsList[index];
                  return ListTile(
                    leading: CustomText(
                      text: earning.email,
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    trailing: CustomText(
                      text: "₹${earning.amount}",
                      fontSize: 14,
                      color: grey500,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
