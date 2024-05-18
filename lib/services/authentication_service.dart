import 'dart:io';

import 'package:evenza/controllers/auth/singup_controller.dart';
import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/profile.dart';
import 'package:evenza/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AutheticationService {
  final ApiHelper apiHelper = ApiHelper();

  Future<String> login(String email, String password, String fcmToken) async {
    apiHelper.init();
    final resposnse = await apiHelper.dio.post('login', data: {
      'email': email,
      'password': password,
      'fcm_token': fcmToken,
    });

    final Map<String, dynamic> data = resposnse.data;

    return data['token'];
  }

  Future<String> register(
      String name,
      String phone,
      String address,
      String email,
      String password,
      DateTime birthDate,
      String fcmToken) async {
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

  Future<void> logout(String fcmToken) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    apiHelper.dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${sharedPreferences.getString('token')}';
    await apiHelper.dio.post('logout', data: {
      'fcm_token': fcmToken,
    });
  }

  Future<User> getprofile() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    apiHelper.dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${sharedPreferences.getString('token')}';
    final response = await apiHelper.dio.get('profile');
    final Map<String, dynamic> data = response.data;

    return User.fromJson(data['data']);
  }

  Future<void> updateprofile(User user) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    apiHelper.dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${sharedPreferences.getString('token')}';
    final response = await apiHelper.dio.post('profile', data: user.toJson());
  }
}
