import 'package:evenza/models/event.dart';
import 'package:evenza/models/reservation.dart';
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
  );
}
