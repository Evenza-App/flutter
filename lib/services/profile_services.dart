import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/profile.dart';

class ProfileService {
  final ApiHelper apiHelper = ApiHelper();
  Future<Profile> getProfile(int id) async {
    apiHelper.init();
    final response = await apiHelper.dio.get('profile/$id');
    return Profile.fromJson((response.data as Map<String, dynamic>)['data']);
  }
  
  Future<List<Profile>> getAll() async {
    final response = await apiHelper.dio.get('profile');

    return ((response.data as Map<String, dynamic>)['data'] as List).map((e) {
      return Profile.fromJson(e);
    }).toList();
  }

  
}
