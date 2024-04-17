import 'package:evenza/screens/onboarding_screen.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            BaseImages.welcome,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 40),
              height: 276.h,
              decoration: BoxDecoration(
                color: BaseColors.backgroundCard,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "أهلاً وسهلاً بك في",
                    textAlign: TextAlign.center,
                    style: BaseTextStyles.title,
                  ),
                  Text(
                    "EVENZA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: BaseColors.primaryDark),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      children: [
                        Expanded(
                            child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'تخطي',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18.h,
                                  color: BaseColors.primary),
                            ),
                          ),
                        )),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.h),
                            decoration: BoxDecoration(
                              color: BaseColors.primary,
                              borderRadius: BorderRadius.circular(32.r),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  Get.off(const OnboardingScreen());
                                },
                                child: Text(
                                  'التالي',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp,
                                      color: BaseColors.backgroundCard),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // child: Text('dsajijd'),
            ),
          ),
        ],
      ),
    );
  }
}
