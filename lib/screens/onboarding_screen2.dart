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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: OnBoardingWidget(
          onNext: () => Get.to(Login()),
          imagePath: BaseImages.baby,
          text: Padding(
            padding: EdgeInsets.only(top: 35.h),
            child: Column(
              children: [
                SizedBox(
                  width: 277.w,
                  // height: 30.h,
                  child: Text(
                    'استعدوا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: BaseColors.primaryDark,
                      fontSize: 20.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  width: 142.w,
                  // height: 30.h,
                  child: Text(
                    'و احتفلوا معنا !!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: BaseColors.orange,
                      fontSize: 20.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
