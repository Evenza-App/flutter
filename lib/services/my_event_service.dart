import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/my_event.dart';

class MyEventService {
  final apiHelper = ApiHelper();

  Future<List<MyEvent>> getAll() async {
    final response = await apiHelper.dio.get('myevents');

    return ((response.data as Map<String, dynamic>)['data'] as List)
        .map((e) => MyEvent.fromJson(e))
        .toList();
  }
}
