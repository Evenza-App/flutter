import 'package:evenza/screens/Login.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingWidget(
        onNext: () => Get.to(const Login()),
        imagePath: BaseImages.baby,
        text: Column(
          children: [
            SizedBox(
              width: 277.w,
              // height: 30.h,
              child: Text(
                'استعدوا',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: BaseColors.primary,
                  fontSize: 17.h,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              width: 142.w,
              // height: 30.h,
              child: Text(
                'واحتفلوا معنا',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: BaseColors.orange,
                  fontSize: 19.h,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ],
        ));
  }
}
