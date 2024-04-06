import 'package:evenza/controllers/splash/splash_controller.dart';
import 'package:evenza/screens/welcome_screen.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SplashScreen extends HookWidget {
  SplashScreen({super.key});

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(BaseImages.balloon),
            Image.asset(BaseImages.logo),
          ],
        ),
      ),
    );
  }
}
