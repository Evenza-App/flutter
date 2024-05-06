import 'package:dio/dio.dart';
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

    try {
      final token =
          await autheticationService.login(email!, password!, fcmToken!);

      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      await sharedPreferences.setString('token', token);

      Get.to(const HomeScreen());
    } on DioException catch (e) {
      Get.snackbar('هنالك خطأ', 'البريد الالكتروني او كلمة السر خاطئة');
    }
    loading.value = false;
  }
}
