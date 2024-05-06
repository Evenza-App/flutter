import 'package:evenza/helpers/fcm_helper.dart';
import 'package:evenza/screens/event_types_screen.dart';
import 'package:evenza/screens/home2.dart';
import 'package:evenza/services/authentication_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  String? email;
  String? password;

  final loading = false.obs;

  final AutheticationService autheticationService = AutheticationService();

  void login() async {
    loading.value = true;
    final fcmToken = await FcmHelper.createToken();
    final token =
        await autheticationService.login(email!, password!, fcmToken!);

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    await sharedPreferences.setString('token', token);
    loading.value = false;

    Get.to(const HomeScreen());
  }
}
