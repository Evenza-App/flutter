import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/photographer.dart';

class PhotographerService {
  final ApiHelper apiHelper = ApiHelper();

  Future<List<Photographer>> getAll() async {
    apiHelper.init();
    final response = await apiHelper.dio.get('photographer');
    return ((response.data as Map<String, dynamic>)['data'] as List).map((e) {
      return Photographer.fromJson(e);
    }).toList();
  }
}
