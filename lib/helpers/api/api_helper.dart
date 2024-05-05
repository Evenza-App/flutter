import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiHelper {
  Dio dio = Dio()
    ..options = BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        ...ngrokHeaders,
      },
    )
    ..interceptors.add(PrettyDioLogger());

  static const String domain = 'https://9cec-46-213-146-193.ngrok-free.app';

  static const String _baseUrl = '$domain/api/';

  static const Map<String, String> ngrokHeaders = {
    "ngrok-skip-browser-warning": "69420"
  };

  ApiHelper() {
    init();
  }

  void init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    dio = Dio()
      ..options = BaseOptions(
        baseUrl: _baseUrl,
        headers: {
          HttpHeaders.acceptHeader: 'application/json',
          HttpHeaders.authorizationHeader:
              'Bearer ${sharedPreferences.getString('token')}',
          ...ngrokHeaders,
        },
      )
      ..interceptors.add(PrettyDioLogger());
  }
}
