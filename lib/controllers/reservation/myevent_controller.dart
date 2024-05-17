import 'package:evenza/models/my_event_detail.dart';
import 'package:evenza/screens/final_broduct_screen%20copy.dart';
import 'package:evenza/screens/home2.dart';
import 'package:evenza/services/reservation_service.dart';
import 'package:evenza/helpers/stripe_helper.dart';
import 'package:get/get.dart';

class MyEventController extends GetxController {
  final _service = ReservationService();

  final loading = false.obs;

  void makePayment(MyEventDetails myEventDetails) async {
    loading.value = true;

    StripeHelper.stripe(myEventDetails.payment!.totalPrice);

    if (await _service.pay(myEventDetails.id)) {
      Get.snackbar('تم الدفع بنجاح', 'لقد تم الدفع بنجاح');

       Get.offAll(HomeScreen());
      // Get.offAll(FinalBroduct2());
      // Get.offAll(Payment());
    }

    loading.value = false;
  }
}
