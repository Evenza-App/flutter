import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/photographer.dart';
import 'package:get/get.dart';

class PhotographerService{
  final ApiHelper apiHelper=ApiHelper();
  
  Future<List<Photographer>> getAll(int id)async{
    final response=await apiHelper.dio.get('photographers');
    return((response.data as Map<String,dynamic>)['data'] as List).map((e){
      return Photographer.fromJson(e);
    }).toList();
  }
}