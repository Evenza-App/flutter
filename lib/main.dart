import 'package:device_preview/device_preview.dart';
import 'package:evenza/firebase_options.dart';
import 'package:evenza/screens/contact_us_screen.dart';
import 'package:evenza/screens/event_reservation_screen.dart';
import 'package:evenza/screens/event_types_screen.dart';
import 'package:evenza/screens/final_broduct_screen.dart';
import 'package:evenza/screens/login.dart';
import 'package:evenza/screens/profile_screen.dart';
import 'package:evenza/screens/search.dart';
import 'package:evenza/screens/select_type_buffet.dart';
import 'package:evenza/screens/splash_screen.dart';
import 'package:evenza/screens/test.dart';
import 'package:evenza/screens/welcome_screen.dart';
import 'package:evenza/widgets/text_form_data.dart';
import 'package:evenza/helpers/fcm_helper.dart';
import 'package:evenza/screens/home2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // if (GetPlatform.isMobile) {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // }
  await dotenv.load(fileName: ".env");

  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;

  runApp(
    DevicePreview(
      enabled: !kDebugMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends HookWidget {
  const MyApp({
    super.key,
  });
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      FcmHelper.init(context);
      return null;
    }, const []);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: SplashScreen(),
      ),
    );
  }
}
// EventWidget(
//       title:'' ,location: '',date: '',image: '',
//         ),
