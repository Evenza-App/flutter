import 'package:evenza/helpers/fcm_helper.dart';
import 'package:evenza/screens/home2.dart';
import 'package:evenza/screens/login.dart';
import 'package:evenza/services/authentication_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoutController extends GetxController {
  

  final loading = false.obs;

  final AutheticationService autheticationService = AutheticationService();

  void logout() async {
    loading.value = true;
    final fcmToken = await FcmHelper.createToken();
    
        await autheticationService.logout(fcmToken!);

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    await sharedPreferences.remove('token');
    loading.value = false;

    Get.to( Login());
  }
}
