import 'package:evenza/helpers/api/api_helper.dart';

class MyEvent {
  int id;
  String eventImage;
  String date;
  String location;
  String eventName;

  MyEvent({
    required this.id,
    required this.eventImage,
    required this.date,
    required this.location,
    required this.eventName,
  });

  factory MyEvent.fromJson(Map<String, dynamic> json) {
    return MyEvent(
      id: json['id'],
      eventImage: json['image']
          .toString()
          .replaceFirst('http://localhost:8000', ApiHelper.domain),
      date: json['date'],
      location: json['location'],
      eventName: json['event'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = eventImage;
    data['date'] = date;
    data['location'] = location;
    data['event'] = eventName;
    return data;
  }
}
