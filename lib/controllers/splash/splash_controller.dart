
import 'package:evenza/helpers/fcm_helper.dart';
import 'package:evenza/screens/home2.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/screens/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();

     FcmHelper.subscribeToAll();

    await Future.delayed(const Duration(seconds: 3));

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final token = sharedPreferences.getString('token');

    if (token != null) {
      Get.to(const HomeScreen());
    } else {
      Get.to(const WelcomeScreen());
    }
  }
}
