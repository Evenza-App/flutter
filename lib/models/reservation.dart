import 'dart:io';

import 'package:evenza/controllers/auth/singup_controller.dart';
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

  Map<String, dynamic> toJson() => {
        'start_time': startTime.toString(),
        'end_time': endTime.toString(),
        'date': date.toDateString(),
        'number_of_people': numberOfPeople,
        'location': location,
        'event_id': event.id,
        'photographer_id': photographer?.id,
        'buffet_ids': buffets.map((buffet) => buffet.id).toList(),
        'details': details
            .map((detail) => {
                  'event_detail_id': detail.keys.first.id,
                  'value': detail.values.first,
                })
            .toList(),
      };
}
