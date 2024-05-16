import 'package:dio/dio.dart';
import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/reservation.dart';

class ReservationService {
  final ApiHelper apiHelper = ApiHelper();

  Future<bool> create(Reservation reservation) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    apiHelper.dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${sharedPreferences.getString('token')}';
    final formData = FormData.fromMap({
      ...reservation.toJson(),
      if (reservation.image != null)
        'image': await MultipartFile.fromFile(reservation.image!.path),
    });
    final buffetIds = formData.fields
        .where((element) => element.key == 'buffet_ids')
        .toList();
    formData.fields.removeWhere((element) => element.key == 'buffet_ids');
    for (int i = 0; i < buffetIds.length; i++) {
      formData.fields.add(MapEntry('buffet_ids[$i]', buffetIds[i].value));
    }

    final response = await apiHelper.dio.post(
      'reservation',
      data: formData,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );

    return (response.data as Map).containsKey('data');
  }

  Future<bool> pay(int id) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    apiHelper.dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${sharedPreferences.getString('token')}';

    final response = await apiHelper.dio.post(
      'reservation/$id/pay'
    );

    return true;
  }
}
