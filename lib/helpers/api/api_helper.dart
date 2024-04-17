import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiHelper {
  late final Dio dio;

  static const String domain = 'https://2703-185-107-56-161.ngrok-free.app';

  static const String _baseUrl = '${domain}/api/';

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
}