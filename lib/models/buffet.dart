import 'package:evenza/helpers/api/api_helper.dart';

class Buffet {
  final int id;

  final String name;
  final String type;
  final int price;

  final String image;

  // final List<EventDetail>? details;

  Buffet({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.type,
  });

  factory Buffet.fromJson(Map<String, dynamic> data) {
    final id = int.parse(data['id'].toString());
    final name = data['name'];
    final image = data['image']
        .toString()
        .replaceFirst('http://localhost:8000', ApiHelper.domain);
    final type = data['type'];
    final price=int.parse(data['price'].toString());
    // final details = data['details'] != null
    //     ? (data['details'] as List)
    //         .map((detail) => EventDetail.fromJson(detail))
    //         .toList()
    //     : null;
    return Buffet(id: id, name: name, image: image, price: price, type: type);
  }
}
