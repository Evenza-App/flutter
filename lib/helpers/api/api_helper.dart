import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiHelper {
  late final Dio dio;

  static const String _baseUrl =
      'https://bd8a-185-177-125-213.ngrok-free.app/api/';

  ApiHelper() {
    dio = Dio()
      ..options = BaseOptions(
        baseUrl: _baseUrl,
        headers: {HttpHeaders.acceptHeader: 'application/json'},
      )
      ..interceptors.add(PrettyDioLogger());
  }
}
