import 'dart:io';

import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/my_event.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyEventService {
  final apiHelper = ApiHelper();

  Future<List<MyEvent>> getAll() async {
    apiHelper.init();
    final sharedPreferences = await SharedPreferences.getInstance();
    apiHelper.dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${sharedPreferences.getString('token')}';
    final response = await apiHelper.dio.get('myevents');

    return ((response.data as Map<String, dynamic>)['reservations'] as List)
        .map((e) => MyEvent.fromJson(e))
        .toList();
  }
}
