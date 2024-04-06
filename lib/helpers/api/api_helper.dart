import 'package:dio/dio.dart';

class ApiHelper {
  final Dio dio;

  static const String _baseUrl = 'https://a72e-169-150-196-107.ngrok-free.app/';

  ApiHelper()
      : dio = Dio()
          ..options = BaseOptions(
            baseUrl: _baseUrl,
          );
}
