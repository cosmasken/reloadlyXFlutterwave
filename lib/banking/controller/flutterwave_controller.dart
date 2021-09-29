import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:flutterwave/core/flutterwave.dart';
import 'package:flutterwave/models/responses/charge_response.dart';
import 'package:flutterwave/utils/flutterwave_constants.dart';

class FlutterwaveController extends GetxController {
  beginPayment(BuildContext context,String currency, String amount, String phonenumber) async {
    try {
      Flutterwave flutterwave = Flutterwave.forUIPayment(
          context: context,
          encryptionKey: "Your_test_encryption_key_here",
          publicKey: "Your_test_public_key_here",
          currency: currency,
          amount: amount,
          email: "valid@email.com",
          fullName: "Valid Full Name",
          txRef: "txref",
          isDebugMode: true,
          phoneNumber: phonenumber,
          acceptCardPayment: true,
          acceptUSSDPayment: false,
          acceptAccountPayment: false,
          acceptFrancophoneMobileMoney: false,
          acceptGhanaPayment: false,
          acceptMpesaPayment: false,
          acceptRwandaMoneyPayment: true,
          acceptUgandaPayment: false,
          acceptZambiaPayment: false);

      final ChargeResponse response = await flutterwave
          .initializeForUiPayments();
    } catch (error) {
      print(error);
    }
  }
 /* bool checkPaymentIsSuccessful(final ChargeResponse response) {
    return response.data.status == FlutterwaveConstants.SUCCESSFUL &&
        response.data.currency == this.currency &&
        response.data.amount == this.amount &&
        response.data.txRef == this.txref;
  }*/
}