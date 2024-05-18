import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiHelper {
  late Dio dio;

  static const String domain = 'http://127.0.0.1:8000';

  static const String _baseUrl = '$domain/api/';

  static const Map<String, String> ngrokHeaders = {
    "ngrok-skip-browser-warning": "69420"
  };

  ApiHelper() {
    dio = Dio()
      ..options = BaseOptions(
        baseUrl: _baseUrl,
        headers: {
          HttpHeaders.acceptHeader: 'application/json',
          ...ngrokHeaders,
        },
      )
      ..interceptors.add(PrettyDioLogger());
  }

  void init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${sharedPreferences.getString('token')}';
  }
}
