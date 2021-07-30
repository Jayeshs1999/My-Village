// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:video_player/video_player.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
//
// // import 'package:fluttertoast/fluttertoast.dart';
//
// class mygaon extends StatefulWidget {
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
// class _MyAppState extends State<mygaon> {
//   static const platform = const MethodChannel("razorpay_flutter");
//
//
//   late Razorpay _razorpay;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             Navigator.pop(context);
//           },
//           child:Icon(Icons.arrow_back),
//
//         ),
//         appBar: AppBar(
//           leading: IconButton(onPressed: (){
//             Navigator.pop(context);
//           }
//               , icon: Icon(Icons.arrow_back)),
//           title: const Text('Gallary'),
//         ),
//         body:  Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: ListView(
//             scrollDirection: Axis.vertical,
//             children: <Widget>[
//
//               Image.asset("images/hos.jpg"),
//               Container(width: 5,),
//               Container(height: 5,),
//
//               Image.asset("images/stand.jpg"),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

  //
  // @override
  // void initState() {
  //   super.initState();
  //   _razorpay = Razorpay();
  //   _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  //   _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  //   _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   _razorpay.clear();
  // }
  //
  // void openCheckout() async {
  //   var options = {
  //     'key': 'rzp_test_1DP5mmOlF5G5ag',
  //     'amount': 2000,
  //     'name': 'Village Development',
  //     'description': 'Take action Over Village develeopment',
  //     'prefill': {'contact': '8888585093', 'email': 'jayeshsevatkar55@gmail.com'},
  //     'external': {
  //       'wallets': ['paytm']
  //     }
  //   };
  //
  //   try {
  //     _razorpay.open(options);
  //   } catch (e) {
  //     debugPrint('Error: e');
  //   }
  // }
  //
  // void _handlePaymentSuccess(PaymentSuccessResponse response) {
  //   // Fluttertoast.showToast(
  //   //     msg: "SUCCESS: " + response.paymentId!, toastLength: Toast.LENGTH_SHORT);
  // }
  //
  // void _handlePaymentError(PaymentFailureResponse response) {
  //   // Fluttertoast.showToast(
  //   //     msg: "ERROR: " + response.code.toString() + " - " + response.message!,
  //   //     toastLength: Toast.LENGTH_SHORT);
  // }
  //
  // void _handleExternalWallet(ExternalWalletResponse response) {
  //   // Fluttertoast.showToast(
  //   //     msg: "EXTERNAL_WALLET: " + response.walletName!, toastLength: Toast.LENGTH_SHORT);
  // }
