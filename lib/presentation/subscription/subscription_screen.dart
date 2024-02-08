import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:eduzap/presentation/core/snack_bar.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
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
    showSnackBar(context, "Payment Success: ${response.paymentId}");
    // Call your server to handle the subscription creation

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
      'name': 'Your Company Name',
      'description': 'Subscription Plan',
      'prefill': {
        'contact': 'user@example.com',
        'email': 'user@example.com',
      },
      'theme': {
        'color': '#3399cc',
      },
      'subscription_id': 'sub_NXFlCDs79TwLIu',
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
        children: [
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
            child: TextButton(
              onPressed: _startPayment,
              child: const Text('Subscribe'),
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionSuccessScreen extends StatelessWidget {
  const SubscriptionSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription Success'),
      ),
      body: const Center(
        child: Text(
          'Congratulations! Your subscription was successful.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
