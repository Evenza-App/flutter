import 'package:evenza/models/event.dart';
import 'package:evenza/models/reservation.dart';
import 'package:evenza/screens/final_broduct_screen%20copy.dart';
import 'package:evenza/screens/home2.dart';
import 'package:evenza/services/reservation_service.dart';
import 'package:get/get.dart';

class ReservationController extends GetxController {
  Reservation reservation = Reservation(
    startTime: DateTime.now(),
    endTime: DateTime.now(),
    date: DateTime.now(),
    numberOfPeople: 0,
    location: 'location',
    event: Event(id: 0, name: 'name', image: 'image'),
    details: [],
    buffets: [],
  );

  final _service = ReservationService();

  final loading = false.obs;

  void makeReservation() async {
    loading.value = true;

    if (await _service.create(reservation)) {
      Get.snackbar('تم الحجز بنجاح', 'لقد تم الحجز بنجاح');

       Get.offAll(HomeScreen());
      // Get.offAll(FinalBroduct2());
      // Get.offAll(Payment());
    }

    loading.value = false;
  }
}
