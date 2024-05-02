import 'package:evenza/screens/Login.dart';
import 'package:evenza/screens/east_buffet_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();

    await Future.delayed(const Duration(seconds: 3));

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final token = sharedPreferences.getString('token');

    if (token != null) {
      Get.to(const EastBuffetScreen());
    } else {
      Get.to(Login());
    }
  }
}
