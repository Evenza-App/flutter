import 'package:dio/dio.dart';
import 'package:evenza/helpers/fcm_helper.dart';
import 'package:evenza/models/user.dart';
import 'package:evenza/screens/event_types_screen.dart';
import 'package:evenza/screens/home2.dart';
import 'package:evenza/services/authentication_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  User user = User(id: 0, name: 'name', address: 'address', phone: 'phone', email: 'email');

  final loading = false.obs;

  final AutheticationService autheticationService = AutheticationService();

  void updateprofile() async {
    loading.value = true;
    

    try {
          await autheticationService.updateprofile(user);

      Get.snackbar('تم التحديث', ' تم تحديث المعلومات بنجاح');
    } on DioException catch (e) {
      Get.snackbar('هنالك خطأ', 'البريد الالكتروني او كلمة السر خاطئة');
    }
    loading.value = false;
  }
}