import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/Buffet_detail.dart';
import 'package:evenza/models/buffet.dart';

class BuffetService {
  final ApiHelper apiHelper = ApiHelper();
  Future<BuffetDetail> getbuffetdetails(int id) async {
    apiHelper.init();
    final response = await apiHelper.dio.get('buffet/$id');
    return BuffetDetail.fromJson(
        (response.data as Map<String, dynamic>)['data']);
  }

  Future<List<Buffet>> getAll(int id, [String? search]) async {
    final response = await apiHelper.dio.get('buffet', queryParameters: {
      'category': id,
      if(search != null) 'search': search,
    });

    return ((response.data as Map<String, dynamic>)['data'] as List).map((e) {
      return Buffet.fromJson(e);
    }).toList();
  }
}
