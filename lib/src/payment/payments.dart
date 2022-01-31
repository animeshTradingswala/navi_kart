import 'package:flutter/material.dart';
import 'package:navi_kart/src/dashboard/component/cache_image.dart';
import 'package:navi_kart/src/search/components/back_button.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../const.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late Razorpay _razorpay;
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_K8nxuqnjUAUHJx',
      'amount': 2000 * 100,
      'name': 'Mystery Trunk',
      'description': 'Product description + name',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    /*
    var options = {
  'key': '<YOUR_KEY_ID>',
  'amount': 50000, //in the smallest currency sub-unit.
  'name': 'Acme Corp.',
  'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
  'description': 'Fine T-Shirt',
  'timeout': 60, // in seconds
  'prefill': {
    'contact': '9123456789',
    'email': 'gaurav.kumar@example.com'
  }
  };*/

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    showToast(
      "SUCCESS: " + response.paymentId!,
      Colors.green,
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    showToast(
      "Payment Failed",
      Colors.pinkAccent,
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    showToast(
      "EXTERNAL_WALLET: " + response.walletName!,
      Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: fab(),
        appBar: AppBar(
          leading: backButton(context),
          elevation: 0,
          title: Text(
            'Payment Section',
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/bill.png',
                  width: w,
                  height: 250,
                ),
                Text(
                  'Billing Section',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Delivery Address',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Animesh Banerjee (+91 9475382132)',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Karunamoyee, K2, Kolkata - 700156',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Total Product Quantity - 05',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Total Price - \$ 800',
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  separatorBuilder: (_, __) => SizedBox(
                    height: 5,
                  ),
                  itemCount: 5,
                  itemBuilder: (_, int i) {
                    return Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            catchImg(
                              imgUrl: demoImg,
                              width: 70,
                              height: 90,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Product Name',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Size - M',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Quantity - 01',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Price - \$ 100',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  fab() {
    return SizedBox(
        width: 120,
        height: 50,
        child: accountButtons(
            text: 'Pay Here', btnColor: Colors.teal, onPressed: openCheckout));
  }

  Widget accountButtons({
    required String text,
    required void Function()? onPressed,
    required Color btnColor,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
        backgroundColor: MaterialStateProperty.all<Color>(btnColor),
        foregroundColor: MaterialStateProperty.all<Color>(white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: white),
          ),
        ),
      ),
    );
  }
}
