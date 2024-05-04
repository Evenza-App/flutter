import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/event_detail.dart';

class Event {
  final int id;

  final String name;

  final String image;

  final List<EventDetail>? details;

  Event({
    required this.id,
    required this.name,
    required this.image,
    this.details,
  });

  factory Event.fromJson(Map<String, dynamic> data) {
    final id = int.parse(data['id'].toString());
    final name = data['name'];
    final image = data['image']
        .toString()
        .replaceFirst('http://localhost:8000', ApiHelper.domain);
    final details = data['details'] != null
        ? (data['details'] as List)
            .map((detail) => EventDetail.fromJson(detail))
            .toList()
        : null;
    return Event(id: id, name: name, image: image, details: details);
  }
}
