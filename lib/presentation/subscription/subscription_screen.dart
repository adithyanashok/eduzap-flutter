import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

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
    print("Payment Success: ${response.paymentId}");
    // Call your server to handle the subscription creation

    // You can navigate to a success screen or handle the UI accordingly
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const SubscriptionSuccessScreen(),
      ),
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("Payment Error: ${response.code} - ${response.message}");
    // You can show an error message to the user or handle the UI accordingly
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print("External Wallet: ${response.walletName}");
    // You can handle external wallet payments if necessary
  }

  void _startPayment() {
    var options = {
      'key': 'rzp_test_II1GS8llWSby5u',
      'amount': 999 *
          100, // amount in the smallest currency unit (e.g., paise or cents)
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
      print('Error during payment: $e');
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
        title: const Text('Razorpay Subscription Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _startPayment,
          child: const Text('Subscribe'),
        ),
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
