import 'dart:io';

import 'package:evenza/models/buffet.dart';
import 'package:evenza/models/event.dart';
import 'package:evenza/models/event_detail.dart';
import 'package:evenza/models/photographer.dart';

class Reservation {
  DateTime startTime;
  DateTime endTime;
  DateTime date;
  int numberOfPeople;
  String location;
  Event event;
  Photographer? photographer;
  List<Buffet> buffets;
  List<Map<EventDetail, dynamic>> details;
  File? image;

  Reservation({
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.numberOfPeople,
    required this.location,
    required this.event,
    this.photographer,
    this.buffets = const [],
    required this.details,
    this.image,
  });
}
