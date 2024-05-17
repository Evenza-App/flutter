import 'package:evenza/helpers/api/api_helper.dart';

class BuffetDetail {
  final int id;

  final String type;
  final String name;
  final String ingredients;
  final double price;
  final String image;

  BuffetDetail(
      {required this.id,
      required this.name,
      required this.ingredients,
      required this.price,
      required this.type,
      required this.image});
  factory BuffetDetail.fromJson(Map<String, dynamic> data) {
    final id = int.parse(data['id'].toString());
    final name = data['name'];
    final type = data['type'];
    final ingredients = data['ingredients'];
    final price = double.parse(data['price'].toString());
    final image = data['image']
        .toString()
        .replaceFirst('http://localhost:8000', ApiHelper.domain);
    return BuffetDetail(
        id: id,
        name: name,
        ingredients: ingredients,
        price: price,
        type: type,
        image: image);
  }
}
