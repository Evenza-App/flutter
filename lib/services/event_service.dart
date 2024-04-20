import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/event.dart';

class EventService {
  final ApiHelper apiHelper = ApiHelper();
  Future<Event> geteventdetails(int id) async {
    final response = await apiHelper.dio.get('events/$id');
    return Event.fromJson ((response.data as Map<String, dynamic>)['data']);
  }

  Future<List<Event>> getAll() async {
    final response = await apiHelper.dio.get('events');

    return ((response.data as Map<String, dynamic>)['data'] as List).map((e) {
      return Event.fromJson(e);
    }).toList();
  }
}
