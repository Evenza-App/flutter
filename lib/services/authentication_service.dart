import 'package:evenza/controllers/auth/singup_controller.dart';
import 'package:evenza/helpers/api/api_helper.dart';

class AutheticationService {
  final ApiHelper apiHelper = ApiHelper();

  Future<String> login(String email, String password, String fcmToken) async {
    final resposnse = await apiHelper.dio.post('login', data: {
      'email': email,
      'password': password,
      'fcm_token': fcmToken,
    });

    final Map<String, dynamic> data = resposnse.data;

    return data['token'];
  }

  Future<String> Register(String name, String phone, String address,
      String email, String password, DateTime birthDate,String fcmToken ) async {
    print(birthDate.toIso8601String());
    final response = await apiHelper.dio.post('register', data: {
      'name': name,
      'phone': phone,
      'address': address,
      'email': email,
      'birthDate': birthDate.toDateString(),
      'password': password,
      'fcm_token': fcmToken,
    });

    final Map<String, dynamic> data = response.data;

    return data['token'];
  }
}
