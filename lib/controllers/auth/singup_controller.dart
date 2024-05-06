import 'package:dio/dio.dart';
import 'package:evenza/helpers/fcm_helper.dart';
import 'package:evenza/screens/event_types_screen.dart';
import 'package:evenza/screens/home2.dart';
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
    final fcmToken = await FcmHelper.createToken();
    try {
      final token = await autheticationService.register(name!, phone!, address!,
          email!, password!, DateTime(2013), fcmToken!);
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      await sharedPreferences.setString('token', token);
      Get.offAll(const HomeScreen());
    } on DioException catch (e) {
      Get.snackbar('هنالك خطأ', 'البريد الالكتروني مستخدم من قبل');
    }

    loading.value = false;

    Get.to(const HomeScreen());
  }
}
