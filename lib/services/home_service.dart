import 'package:evenza/helpers/api/api_helper.dart';

import '../models/home.dart';

class HomeService {
  final ApiHelper apiHelper = ApiHelper();

  Future<Home> getAll() async {
    apiHelper.init();
    final response = await apiHelper.dio.get('home');

    return Home.fromJson(response.data);
  }
}

// class HomeService{
//   final ApiHelper apiHelper=ApiHelper();
//   Future<List<Home>> getAll()async{
//     final response=await apiHelper.dio.get('homes');
//     return((response.data as Map<String,dynamic>)['data']as List).map((e){
//       return Home.fromJson(e);
//     }).toList();
//   }
// }