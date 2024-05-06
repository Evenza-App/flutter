import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/Buffet_detail.dart';
import 'package:evenza/models/buffet.dart';

class BuffetService {
  final ApiHelper apiHelper = ApiHelper();
  Future<BuffetDetail> getbuffetdetails(int id) async {
    final response = await apiHelper.dio.get('buffet/$id');
    return BuffetDetail.fromJson(
        (response.data as Map<String, dynamic>)['data']);
  }

  Future<List<Buffet>> getAll(int id) async {
    final response = await apiHelper.dio.get('buffet', queryParameters: {
      'category': id,
    });

    return ((response.data as Map<String, dynamic>)['data'] as List).map((e) {
      return Buffet.fromJson(e);
    }).toList();
  }
}
