import 'package:evenza/helpers/api/api_helper.dart';

class Home {
  final int id;
  final String name;
  final String image;

Home({
  required this.id,
  required this.name,
  required this.image,
});
factory Home.fromJson(Map<String,dynamic>data){
  final id=int.parse(data['id'].toString());
  final name=data['name'];
  final image=data['image']
  .toString()
  .replaceFirst('http://localhost:8000', ApiHelper.domain);
  return Home(id: id, name: name, image: image);
}
}