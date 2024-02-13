import 'package:eduzap/application/earnings/earnings_bloc.dart';
import 'package:eduzap/application/user/user_bloc.dart';
import 'package:eduzap/domain/earnings/model/earnings_model.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:eduzap/presentation/core/snack_bar.dart';
import 'package:intl/intl.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  final user = FirebaseAuth.instance.currentUser;
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    showSnackBar(context, "Payment Success: ${response.paymentId}",
        status: true);
    context.read<UserBloc>().add(const UserEvent.updateSubscription());
    context.read<EarningsBloc>().add(
          EarningsEvent.addATransaction(
            EarningsModel(amount: 999, email: '${user!.email}'),
          ),
        );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const SubscriptionSuccessScreen(),
      ),
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    showSnackBar(context, "Payment Canceled", status: true);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    showSnackBar(context, "External Wallet: ${response.walletName}");
  }

  void _startPayment() {
    var options = {
      'key': 'rzp_test_II1GS8llWSby5u',
      'name': 'EduZap',
      'description': 'Subscription',
      'amount': 999 * 100,
      'prefill': {
        'contact': 'user@example.com',
        'email': 'user@example.com',
      },
      'theme': {
        'color': '#035efc',
      },
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      showSnackBar(context, "$e");
    }
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserBloc>().state.user;
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Subscription",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: primaryBlue,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          user.subscriber ? SubscriptionDetails(user: user) : const SizedBox(),
          const SizedBox(height: 20),
          Container(
            width: 360,
            height: 100,
            decoration: BoxDecoration(
              color: primaryBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: "Monthly Plan",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        CustomText(
                          text: "₹999 billed every month",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    CustomText(
                      text: "₹999",
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(primaryBlue),
              ),
              onPressed: user.subscriber ? () {} : _startPayment,
              child: CustomText(
                text: user.subscriber ? 'Current Subscription' : 'Subscribe',
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionDetails extends StatelessWidget {
  const SubscriptionDetails({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            const CustomText(
              text: "Current: ",
              fontSize: 16,
              color: primaryBlue,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: getDate(user.currentSubDate!),
              fontSize: 13,
              color: primaryBlue,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            const CustomText(
              text: "Next Due On: ",
              fontSize: 16,
              color: primaryBlue,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: getDate(user.nextSubDate!),
              fontSize: 13,
              color: primaryBlue,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}

String getDate(DateTime date) {
  return DateFormat.yMMMMEEEEd().format(date);
}

class SubscriptionSuccessScreen extends StatelessWidget {
  const SubscriptionSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription Success'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Congratulations! Your subscription was successful.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(primaryBlue),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const CustomText(
                text: 'Home',
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
