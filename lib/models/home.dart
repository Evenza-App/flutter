import 'package:evenza/helpers/api/api_helper.dart';

class Home {
  final List<HomeItem> latestevents;

  final List<HomeItem> trends;

  Home({
    required this.latestevents,
    required this.trends,
  });
  factory Home.fromJson(Map<String, dynamic> data) {
    final latestevents = (data['latestevents'] as List)
        .map((e) => HomeItem.fromJson(e))
        .toList();
    final trends =
        (data['trends'] as List).map((e) => HomeItem.fromJson(e)).toList();
    return Home(latestevents: latestevents, trends: trends);
  }
}

class HomeItem {
  final int id;
  final String name;
  final String image;

  HomeItem({
    required this.id,
    required this.name,
    required this.image,
  });
  factory HomeItem.fromJson(Map<String, dynamic> data) {
    final id = int.parse(data['id'].toString());
    final name = data['name'];
    final image = data['image']
        .toString()
        .replaceFirst('http://localhost:8000', ApiHelper.domain);
    return HomeItem(id: id, name: name, image: image);
  }
}
