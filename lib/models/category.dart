import 'package:evenza/helpers/api/api_helper.dart';

class Category {
  final int id;

  final String name;

  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Category.fromJson(Map<String, dynamic> data) {
    final id = int.parse(data['id'].toString());
    final name = data['name'];
    final image = data['image']
        .toString()
        .replaceFirst('http://localhost:8000', ApiHelper.domain);
    return Category(id: id, name: name, image: image);
  }
}
