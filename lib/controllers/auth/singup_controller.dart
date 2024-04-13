import 'package:evenza/screens/east_buffet_screen.dart';
import 'package:evenza/services/authentication_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension ToDate on DateTime {
  String toDateString() => toString().split(' ').first;
}

class SingupController extends GetxController {
  String? name;
  String? phone;
  String? address;
  String? email;
  String? password;

  final loading = false.obs;

  final AutheticationService autheticationService = AutheticationService();
  void Register() async {
    loading.value = true;

    final token = await autheticationService.Register(
        name!, phone!, address!, email!, password!, DateTime(2013));

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    await sharedPreferences.setString('token', token);
    loading.value = false;

    Get.to(EastBuffetScreen());
  }
}
