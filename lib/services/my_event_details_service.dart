import 'dart:io';

import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/my_event.dart';
import 'package:evenza/models/my_event_detail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyEventDetailsService {
  final apiHelper = ApiHelper();

  Future<MyEventDetails>getmyeventdetails(int id) async {
    final response = await apiHelper.dio.get('myevents/$id');
    return MyEventDetails.fromJson(
        (response.data as Map<String, dynamic>)['data']);
  }

  
  
}