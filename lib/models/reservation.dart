import 'dart:io';

class Reservation {
  DateTime startTime;
  DateTime endTime;
  DateTime date;
  int numberOfPeople;
  String location;
  int eventId;
  int photographerId;
  List<int> buffetIds;
  List<Map<int, dynamic>> details;
  File? image;

  Reservation({
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.numberOfPeople,
    required this.location,
    required this.eventId,
    required this.photographerId,
    required this.buffetIds,
    required this.details,
    this.image,
  });
}
