import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/category.dart';

class CategoryService {
  final ApiHelper apiHelper = ApiHelper();

  Future<List<Category>> getAll() async {
    final response = await apiHelper.dio.get('categories');

    return ((response.data as Map<String, dynamic>)['data'] as List)
        .map((e) => Category.fromJson(e))
        .toList();
  }
}
