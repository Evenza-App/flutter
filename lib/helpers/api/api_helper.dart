import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiHelper {
  late final Dio dio;
  static const String domain = '  https://0d8a-185-107-56-222.ngrok-free.app';

  static const String _baseUrl = '${domain}/api/';

  ApiHelper() {
    dio = Dio()
      ..options = BaseOptions(
        baseUrl: _baseUrl,
        headers: {HttpHeaders.acceptHeader: 'application/json'},
      )
      ..interceptors.add(PrettyDioLogger());
  }
}
