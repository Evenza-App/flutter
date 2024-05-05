import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/reservation.dart';

class ReservationService {
  final ApiHelper apiHelper = ApiHelper();

  Future<bool> create(Reservation reservation) async {
    apiHelper.init();
    final response =
        await apiHelper.dio.post('reservation', data: reservation.toJson());

    return (response.data as Map).containsKey('data');
  }
}
