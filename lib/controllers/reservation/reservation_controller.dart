import 'package:evenza/models/reservation.dart';
import 'package:get/get.dart';

class ReservationController extends GetxController {
  Reservation reservation = Reservation(
    startTime: DateTime.now(),
    endTime: DateTime.now(),
    date: DateTime.now(),
    numberOfPeople: 0,
    location: 'location',
    eventId: 0,
    photographerId: 0,
    buffetIds: [0, 9],
    details: [],
  );
}
