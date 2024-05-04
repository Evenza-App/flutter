import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiHelper {
  late final Dio dio;
  static const String domain = 'https://d295-169-150-218-4.ngrok-free.app';

  static const String _baseUrl = '$domain/api/';

  ApiHelper() {
    dio = Dio()
      ..options = BaseOptions(
        baseUrl: _baseUrl,
        headers: {HttpHeaders.acceptHeader: 'application/json'},
      )
      ..interceptors.add(PrettyDioLogger());
  }
}
