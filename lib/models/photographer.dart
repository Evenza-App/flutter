


import 'package:evenza/helpers/api/api_helper.dart';

class Photographer{
  final int id;
  final String name;
  final String image;
  final String bio;
  final List<String> images;
   Photographer({
    required this.id,
    required this.name,
    required this.image,
required this.bio,
    required this.images,
   });
   factory Photographer.fromJson(Map<String,dynamic>data){
    final id=int.parse(data['id'].toString());
    final name=data['name'];
    final image=data['image'].toString()
    .replaceFirst('http://localhost:8000', ApiHelper.domain);
    final bio=data['bio'];
    final images=(data['images']as List).map((item)=>item['images']as String).toList();
    return Photographer(id: id, name: name, image: image,bio: bio,images: images);
   }
}