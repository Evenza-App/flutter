import 'package:device_preview/device_preview.dart';
import 'package:evenza/firebase_options.dart';
import 'package:evenza/helpers/fcm_helper.dart';
import 'package:evenza/screens/home2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await dotenv.load(fileName: ".env");

  Stripe.publishableKey =
      'pk_test_51PBXH2RxkZxt0A5caJkYQAuBC09eEtyRRSOzEchcoj41QqyVkRgEF3Lw3FOyB7JFNVr1lHTQ09LlSz0E0FeYyIWc00POmpI91y';

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
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
        home: const HomeScreen(),
      ),
    );
  }
}
// EventWidget(
//       title:'' ,location: '',date: '',image: '',
//         ),
