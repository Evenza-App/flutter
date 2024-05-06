import 'package:evenza/screens/onboarding_screen.dart';
import 'package:evenza/styles/color.dart';
import 'package:evenza/styles/images.dart';
import 'package:evenza/styles/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
            bottom: 0.h,
            right: 0.w,
            left: 0.w,
            child: Container(
              padding:  EdgeInsets.only(top: 40.h),
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
                  SizedBox(
                    height: 0.h,
                  ),

                  Image(
                    image: const AssetImage(BaseImages.logo2),
                    height: 100.h,
                    width: 100.w,
                  ),
                  // Text(
                  //   "EVENZA",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //       fontSize: 25.sp,
                  //       fontWeight: FontWeight.bold,
                  //       letterSpacing: 7.sp,
                  //       color: BaseColors.orange),
                  // ),
                  SizedBox(
                    height: 0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      children: [
                        Expanded(
                            child: Center(
                          child: Container(
                            width: 200.h,
                            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
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
                                  'إبدأ رحلتك',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp,
                                      color: BaseColors.backgroundCard),
                                ),
                              ),
                            ),
                          ),
                        )),
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
