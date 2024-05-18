import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class StripeHelper {
  static Future<void> stripe(double price) async {
    final paymentIntent =
        await createPaymentIntent(price.toInt().toString(), 'usd');
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      billingDetails: BillingDetails(name: 'YOUR NAME'),
      merchantDisplayName: 'Reservation',
      paymentIntentClientSecret: paymentIntent!['client_secret'],
    ));

    StripeHelper.displayPaymentSheet();
  }

  //create Payment
  static createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': calculateAmount(amount),
        'currency': currency,
      };

      //Make post request to Stripe
      var response = await Dio(BaseOptions(headers: {
        'Authorization': 'Bearer ${dotenv.env['STRIPE_SECRET_KEY']}',
        'Content-Type': 'application/x-www-form-urlencoded'
      })).post(
        'https://api.stripe.com/v1/payment_intents',
        data: body,
      );
      return response.data;
    } catch (err) {
      throw Exception(err.toString());
    }
  }

//calculate Amount
  static String calculateAmount(String amount) {
    final calculatedAmount = (int.parse(amount)) * 100;
    return calculatedAmount.toString();
  }

  static void displayPaymentSheet() async {
    try {
      // 3. display the payment sheet.
      await Stripe.instance.presentPaymentSheet();

      ScaffoldMessenger.of(Get.context!).showSnackBar(
          SnackBar(content: Text('Payment succesfully completed')));
    } on Exception catch (e) {
      if (e is StripeException) {
        print(e.error.localizedMessage);
        ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
            content: Text('Error from Stripe: ${e.error.localizedMessage}')));
      } else {
        print(e);
        ScaffoldMessenger.of(Get.context!)
            .showSnackBar(SnackBar(content: Text('Unforeseen error: ${e}')));
      }
    }
  }
}
